.class public Lcom/sekai/bank/models/responses/AuthResponse;
.super Ljava/lang/Object;
.source "AuthResponse.java"


# instance fields
.field private accessToken:Ljava/lang/String;

.field private expiresIn:J

.field private refreshToken:Ljava/lang/String;

.field private user:Lcom/sekai/bank/models/User;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/sekai/bank/models/User;J)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/sekai/bank/models/responses/AuthResponse;->accessToken:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Lcom/sekai/bank/models/responses/AuthResponse;->refreshToken:Ljava/lang/String;

    .line 17
    iput-object p3, p0, Lcom/sekai/bank/models/responses/AuthResponse;->user:Lcom/sekai/bank/models/User;

    .line 18
    iput-wide p4, p0, Lcom/sekai/bank/models/responses/AuthResponse;->expiresIn:J

    return-void
.end method


# virtual methods
.method public getAccessToken()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/sekai/bank/models/responses/AuthResponse;->accessToken:Ljava/lang/String;

    return-object v0
.end method

.method public getExpiresIn()J
    .locals 2

    .line 25
    iget-wide v0, p0, Lcom/sekai/bank/models/responses/AuthResponse;->expiresIn:J

    return-wide v0
.end method

.method public getRefreshToken()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/sekai/bank/models/responses/AuthResponse;->refreshToken:Ljava/lang/String;

    return-object v0
.end method

.method public getUser()Lcom/sekai/bank/models/User;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/sekai/bank/models/responses/AuthResponse;->user:Lcom/sekai/bank/models/User;

    return-object v0
.end method

.method public setAccessToken(Ljava/lang/String;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/sekai/bank/models/responses/AuthResponse;->accessToken:Ljava/lang/String;

    return-void
.end method

.method public setExpiresIn(J)V
    .locals 0

    .line 31
    iput-wide p1, p0, Lcom/sekai/bank/models/responses/AuthResponse;->expiresIn:J

    return-void
.end method

.method public setRefreshToken(Ljava/lang/String;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/sekai/bank/models/responses/AuthResponse;->refreshToken:Ljava/lang/String;

    return-void
.end method

.method public setUser(Lcom/sekai/bank/models/User;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/sekai/bank/models/responses/AuthResponse;->user:Lcom/sekai/bank/models/User;

    return-void
.end method
