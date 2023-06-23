CREATE INDEX location_idx ON Stores USING GIST (location);
CREATE INDEX fk_idx ON Products (store_id);