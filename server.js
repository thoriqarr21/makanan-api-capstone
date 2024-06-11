/* eslint-disable no-restricted-syntax */
/* eslint-disable no-undef */
/* eslint-disable max-len */
/* eslint-disable import/no-extraneous-dependencies */
/* eslint-disable no-unused-vars */
const Hapi = require('@hapi/hapi');
const Joi = require('joi'); // Diperlukan untuk validasi data
const uuid = require('uuid');
const mysql = require('mysql'); // Digunakan untuk membuat UUID

const connection = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  password: '',
  database: 'apimakanan',
});

connection.connect((err) => {
  if (err) {
    console.error(`Error connecting to database: ${err.stack}`);
    return;
  }
  console.log(`Connected to database with ID: ${connection.threadId}`);
});

const init = async () => {
  const server = Hapi.server({
    port: 3015,
    host: 'localhost',
  });
    // Daerah API //
  server.route({
    method: 'GET',
    path: '/daerah',
    handler: async (request, h) => {
      try {
        const daerahss = await new Promise((resolve, reject) => {
          connection.query('SELECT * FROM daerahs', (error, results, fields) => {
            if (error) {
              reject(error);
            } else {
              resolve(results);
            }
          });
        });

        return h.response({
          error: false,
          message: 'success',
          daerahs: daerahss,
        });
      } catch (error) {
        console.error(`Error fetching daerahs: ${error.stack}`);
        return h.response({ error: true, message: 'Failed to fetch daerahs' }).code(500);
      }
    },
    options: {
      cors: {
        origin: ['*'],
      },
    },
  });

  server.route({
    method: 'GET',
    path: '/daerah/{daerahId}',
    handler: async (request, h) => {
      try {
        const { daerahId } = request.params;

        const daerah = await new Promise((resolve, reject) => {
          connection.query('SELECT * FROM daerahs WHERE daerahId = ?', [daerahId], (error, results, fields) => {
            if (error) {
              reject(error);
            } else {
              resolve(results[0]);
            }
          });
        });

        if (!daerah) {
          return h.response({ error: true, message: 'Daerah not found' }).code(404);
        }

        const detailedDaerah = {
          ...daerah,
          makanans: await new Promise((resolve, reject) => {
            connection.query('SELECT * FROM makanans WHERE daerahId = ?', [daerahId], (error, results, fields) => {
              if (error) {
                reject(error);
              } else {
                resolve(results);
              }
            });
          }),
        };

        return h.response({
          error: false,
          message: 'success',
          daerah: detailedDaerah,
        });
      } catch (error) {
        console.error(`Error fetching daerah details: ${error.stack}`);
        return h.response({ error: true, message: 'Failed to fetch daerah details' }).code(500);
      }
    },
    options: {
      cors: {
        origin: ['*'],
      },
    },
  });

  server.route({
    method: 'POST',
    path: '/daerah',
    handler: async (request, h) => {
      try {
        const {
          name, deskripsi, pictureId,
        } = request.payload;
        const daerahId = uuid.v4();
        await connection.query(
          'INSERT INTO daerahs (daerahId, name, deskripsi, pictureId) VALUES (?, ?, ?, ?)',
          [daerahId, name, deskripsi, pictureId],
        );
        return {
          error: false,
          message: 'Daerah added successfully',
          daerah: {
            daerahId, name, deskripsi, pictureId,
          },
        };
      } catch (error) {
        console.error(`Error adding daerah: ${error.stack}`);
        return h.response({ error: true, message: 'Failed to add daerah' }).code(500);
      }
    },
    options: {
      validate: {
        payload: Joi.object({
          name: Joi.string().required(),
          deskripsi: Joi.string().required(),
          pictureId: Joi.string().required(),
        }),
      },
      cors: {
        origin: ['*'],
      },
    },
  });

  server.route({
    method: 'DELETE',
    path: '/daerah/{daerahId}',
    handler: async (request, h) => {
      try {
        const { daerahId } = request.params;
        await connection.query('DELETE FROM daerahs WHERE daerahId = ?', [daerahId]);
        return { error: false, message: 'Daerah deleted successfully' };
      } catch (error) {
        console.error(`Error deleting daerah: ${error.stack}`);
        return h.response({ error: true, message: 'Failed to delete daerah' }).code(500);
      }
    },
    options: {
      cors: {
        origin: ['*'],
      },
    },
  });

  server.route({
    method: 'PUT',
    path: '/daerah/{daerahId}',
    handler: async (request, h) => {
      try {
        const { daerahId } = request.params;
        const {
          name, deskripsi, pictureId,
        } = request.payload;
        await connection.query(
          'UPDATE daerahs SET name = ?, deskripsi = ?,  pictureId = ? WHERE daerahId = ?',
          [name, deskripsi, pictureId, daerahId],
        );
        return {
          error: false,
          message: 'Daerah updated successfully',
          daerah: {
            daerahId, name, deskripsi, pictureId,
          },
        };
      } catch (error) {
        console.error(`Error updating daerah: ${error.stack}`);
        return h.response({ error: true, message: 'Failed to update daerah' }).code(500);
      }
    },
    options: {
      validate: {
        payload: Joi.object({
          name: Joi.string().required(),
          pictureId: Joi.string().required(),
        }),
      },
      cors: {
        origin: ['*'],
      },
    },
  });

  // Makanan API //

  server.route({
    method: 'GET',
    path: '/makanan',
    handler: async (request, h) => {
      try {
        const makananss = await new Promise((resolve, reject) => {
          connection.query('SELECT * FROM makanans', (error, results, fields) => {
            if (error) {
              reject(error);
            } else {
              resolve(results);
            }
          });
        });

        return h.response({
          error: false,
          message: 'success',
          makanans: makananss,
        });
      } catch (error) {
        console.error(`Error fetching makanans: ${error.stack}`);
        return h.response({ error: true, message: 'Failed to fetch makanans' }).code(500);
      }
    },
    options: {
      cors: {
        origin: ['*'],
      },
    },
  });
  server.route({
    method: 'GET',
    path: '/makanan/{id}',
    handler: async (request, h) => {
      try {
        const { id } = request.params;

        const makanan = await new Promise((resolve, reject) => {
          connection.query('SELECT * FROM makanans WHERE id = ?', [id], (error, results, fields) => {
            if (error) {
              reject(error);
            } else {
              resolve(results[0]);
            }
          });
        });

        if (!makanan) {
          return h.response({ error: true, message: 'Makanan not found' }).code(404);
        }

        const detailedMakanan = {
          ...makanan,
          reseps: await new Promise((resolve, reject) => {
            connection.query('SELECT * FROM reseps WHERE id = ?', [id], (error, results, fields) => {
              if (error) {
                reject(error);
              } else {
                resolve(results);
              }
            });
          }),
        };

        return h.response({
          error: false,
          message: 'success',
          makanan: detailedMakanan,
        });
      } catch (error) {
        console.error(`Error fetching makanan details: ${error.stack}`);
        return h.response({ error: true, message: 'Failed to fetch makanan details' }).code(500);
      }
    },
    options: {
      cors: {
        origin: ['*'],
      },
    },
  });

  server.route({
    method: 'POST',
    path: '/makanan',
    handler: async (request, h) => {
      try {
        const {
          name, publisher, description, tingkatSulit, waktu, rating, image, daerahId,
        } = request.payload;
        const id = uuid.v4();
        await connection.query(
          'INSERT INTO makanans (id, name, publisher, description, tingkatSulit, waktu, rating, image, daerahId) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)',
          [id, name, publisher, description, tingkatSulit, waktu, rating, image, daerahId],
        );
        return {
          error: false,
          message: 'Makanan added successfully',
          makanan: {
            id, name, publisher, description, tingkatSulit, waktu, rating, image, daerahId,
          },
        };
      } catch (error) {
        console.error(`Error adding makanan: ${error.stack}`);
        return h.response({ error: true, message: 'Failed to add makanan' }).code(500);
      }
    },
    options: {
      validate: {
        payload: Joi.object({
          name: Joi.string().required(),
          publisher: Joi.string().required(),
          description: Joi.string().required(),
          tingkatSulit: Joi.string().required(),
          waktu: Joi.string().required(),
          rating: Joi.string().required(),
          image: Joi.string().required(),
          daerahId: Joi.string().required(),
        }),
      },
      cors: {
        origin: ['*'],
      },
    },
  });

  server.route({
    method: 'DELETE',
    path: '/makanan/{id}',
    handler: async (request, h) => {
      try {
        const { id } = request.params;
        await connection.query('DELETE FROM makanans WHERE id = ?', [id]);
        return { error: false, message: 'Makanan deleted successfully' };
      } catch (error) {
        console.error(`Error deleting makanan: ${error.stack}`);
        return h.response({ error: true, message: 'Failed to delete makanan' }).code(500);
      }
    },
    options: {
      cors: {
        origin: ['*'],
      },
    },
  });

  server.route({
    method: 'PUT',
    path: '/makanan/{id}',
    handler: async (request, h) => {
      try {
        const { id } = request.params;
        const {
          name, publisher, description, tingkatSulit, waktu, rating, image, daerahId,
        } = request.payload;
        await connection.query(
          'UPDATE makanans SET name = ?, publisher = ?, description = ?, tingkatSulit = ?, waktu = ?, rating = ?, image = ?, daerahId = ? WHERE id = ?',
          [name, publisher, description, tingkatSulit, waktu, rating, image, daerahId, id],
        );
        return {
          error: false,
          message: 'Makanan updated successfully',
          makanan: {
            id, name, publisher, description, tingkatSulit, waktu, rating, image, daerahId,
          },
        };
      } catch (error) {
        console.error(`Error updating makanan: ${error.stack}`);
        return h.response({ error: true, message: 'Failed to update makanan' }).code(500);
      }
    },
    options: {
      validate: {
        payload: Joi.object({
          name: Joi.string().required(),
          publisher: Joi.string().required(),
          description: Joi.string().required(),
          tingkatSulit: Joi.string().required(),
          waktu: Joi.string().required(),
          rating: Joi.string().required(),
          image: Joi.string().required(),
          daerahId: Joi.string().required(),
        }),
      },
      cors: {
        origin: ['*'],
      },
    },
  });

  // Post Resep //

  server.route({
    method: 'POST',
    path: '/resep',
    handler: async (request, h) => {
      try {
        const { id, bahan, caraMasak } = request.payload;
        // const id = uuid.v4();
        const makananDetail = await connection.query(
          'SELECT id FROM makanans WHERE id = ?',
          [id],
        );
        if (makananDetail.length === 0) {
          return h.response({ error: true, message: 'makanan not found' }).code(404);
        }
        await connection.query(
          'INSERT INTO reseps (id, bahan, caraMasak) VALUES (?, ?, ?)',
          [id, bahan, caraMasak],
        );

        return {
          error: false,
          message: 'Resep added successfully',
          resep: {
            id,
            bahan,
            caraMasak,
          },
        };
      } catch (error) {
        console.error(`Error adding resep: ${error.stack}`);
        return h.response({ error: true, message: 'Failed to add resep' }).code(500);
      }
    },
    options: {
      validate: {
        payload: Joi.object({
          id: Joi.string().required(),
          bahan: Joi.string().required(),
          caraMasak: Joi.string().required(),
        }),
      },
      cors: {
        origin: ['*'],
      },
    },
  });

  // image //

  server.route({
    method: 'GET',
    path: '/images/small/{pictureId}',
    handler: (request, h) => {
      const { pictureId } = request.params;

      const query = 'SELECT image FROM pictures WHERE pictureId = ?';
      connection.query(query, [pictureId], (error, results) => {
        if (error) throw error;

        if (results.length === 0) {
          return h.response({ error: 'Image not found' }).code(404);
        }

        const imageBuffer = results[0].image;

        return h.response(imageBuffer)
          .type('image/jpeg')
          .header('Content-Disposition', `inline; filename="${pictureId}.jpg"`);
      });

      return h.response().code(200);
    },
  });

  await server.start();
  console.log('Server running on %s', server.info.uri);
};

process.on('unhandledRejection', (err) => {
  console.log(err);
  process.exit(1);
});

init();
