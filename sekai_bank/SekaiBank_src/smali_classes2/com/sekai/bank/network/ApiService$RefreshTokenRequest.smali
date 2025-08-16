.class public Lcom/sekai/bank/network/ApiService$RefreshTokenRequest;
.super Ljava/lang/Object;
.source "ApiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sekai/bank/network/ApiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RefreshTokenRequest"
.end annotation


# instance fields
.field private refreshToken:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/sekai/bank/network/ApiService$RefreshTokenRequest;->refreshToken:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getRefreshToken()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/sekai/bank/network/ApiService$RefreshTokenRequest;->refreshToken:Ljava/lang/String;

    return-object v0
.end method

.method public setRefreshToken(Ljava/lang/String;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/sekai/bank/network/ApiService$RefreshTokenRequest;->refreshToken:Ljava/lang/String;

    return-void
.end method
