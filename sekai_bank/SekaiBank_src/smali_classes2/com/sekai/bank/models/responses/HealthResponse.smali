.class public Lcom/sekai/bank/models/responses/HealthResponse;
.super Ljava/lang/Object;
.source "HealthResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sekai/bank/models/responses/HealthResponse$DatabaseInfo;,
        Lcom/sekai/bank/models/responses/HealthResponse$MemoryInfo;
    }
.end annotation


# instance fields
.field private database:Lcom/sekai/bank/models/responses/HealthResponse$DatabaseInfo;

.field private environment:Ljava/lang/String;

.field private memory:Lcom/sekai/bank/models/responses/HealthResponse$MemoryInfo;

.field private status:Ljava/lang/String;

.field private timestamp:Ljava/lang/String;

.field private uptime:J

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDatabase()Lcom/sekai/bank/models/responses/HealthResponse$DatabaseInfo;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/sekai/bank/models/responses/HealthResponse;->database:Lcom/sekai/bank/models/responses/HealthResponse$DatabaseInfo;

    return-object v0
.end method

.method public getEnvironment()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/sekai/bank/models/responses/HealthResponse;->environment:Ljava/lang/String;

    return-object v0
.end method

.method public getMemory()Lcom/sekai/bank/models/responses/HealthResponse$MemoryInfo;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/sekai/bank/models/responses/HealthResponse;->memory:Lcom/sekai/bank/models/responses/HealthResponse$MemoryInfo;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/sekai/bank/models/responses/HealthResponse;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/sekai/bank/models/responses/HealthResponse;->timestamp:Ljava/lang/String;

    return-object v0
.end method

.method public getUptime()J
    .locals 2

    .line 18
    iget-wide v0, p0, Lcom/sekai/bank/models/responses/HealthResponse;->uptime:J

    return-wide v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/sekai/bank/models/responses/HealthResponse;->version:Ljava/lang/String;

    return-object v0
.end method

.method public setDatabase(Lcom/sekai/bank/models/responses/HealthResponse$DatabaseInfo;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/sekai/bank/models/responses/HealthResponse;->database:Lcom/sekai/bank/models/responses/HealthResponse$DatabaseInfo;

    return-void
.end method

.method public setEnvironment(Ljava/lang/String;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/sekai/bank/models/responses/HealthResponse;->environment:Ljava/lang/String;

    return-void
.end method

.method public setMemory(Lcom/sekai/bank/models/responses/HealthResponse$MemoryInfo;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/sekai/bank/models/responses/HealthResponse;->memory:Lcom/sekai/bank/models/responses/HealthResponse$MemoryInfo;

    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/sekai/bank/models/responses/HealthResponse;->status:Ljava/lang/String;

    return-void
.end method

.method public setTimestamp(Ljava/lang/String;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/sekai/bank/models/responses/HealthResponse;->timestamp:Ljava/lang/String;

    return-void
.end method

.method public setUptime(J)V
    .locals 0

    .line 27
    iput-wide p1, p0, Lcom/sekai/bank/models/responses/HealthResponse;->uptime:J

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/sekai/bank/models/responses/HealthResponse;->version:Ljava/lang/String;

    return-void
.end method
