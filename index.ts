import { RedisClient } from "@aws/glide-for-redis";

const init = async () => {
    const addresses = [
        {
            host: "redis",
            port: 6379,
        },
    ];
    const client = await RedisClient.createClient({
        addresses,
    });
    console.log('connected to Redis');
    await client.set("foo", "bar");
    const value = await client.get("foo");
    console.log('fetching from Redis:');
    console.log({ value });
    client.close();
};
init();
