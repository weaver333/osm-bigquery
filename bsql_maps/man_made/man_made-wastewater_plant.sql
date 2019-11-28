SELECT
  'man_made-wastewater_plant' AS name, *
FROM `openstreetmap-public-data-dev.osm_planet.points`
WHERE EXISTS(SELECT 1 FROM UNNEST(all_tags) as tags WHERE tags.key = 'man_made' AND tags.value='wastewater_plant')
UNION ALL
SELECT
  'man_made-wastewater_plant' AS name, *
FROM `openstreetmap-public-data-dev.osm_planet.multipolygons`
WHERE EXISTS(SELECT 1 FROM UNNEST(all_tags) as tags WHERE tags.key = 'man_made' AND tags.value='wastewater_plant')
UNION ALL
SELECT
  'man_made-wastewater_plant' AS name, *
FROM `openstreetmap-public-data-dev.osm_planet.other_relations`
WHERE EXISTS(SELECT 1 FROM UNNEST(all_tags) as tags WHERE tags.key = 'man_made' AND tags.value='wastewater_plant')

