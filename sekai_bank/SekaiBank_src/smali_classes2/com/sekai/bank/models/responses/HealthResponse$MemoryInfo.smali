.class public Lcom/sekai/bank/models/responses/HealthResponse$MemoryInfo;
.super Ljava/lang/Object;
.source "HealthResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sekai/bank/models/responses/HealthResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MemoryInfo"
.end annotation


# instance fields
.field private total:D

.field private used:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTotal()D
    .locals 2

    .line 49
    iget-wide v0, p0, Lcom/sekai/bank/models/responses/HealthResponse$MemoryInfo;->total:D

    return-wide v0
.end method

.method public getUsed()D
    .locals 2

    .line 48
    iget-wide v0, p0, Lcom/sekai/bank/models/responses/HealthResponse$MemoryInfo;->used:D

    return-wide v0
.end method

.method public setTotal(D)V
    .locals 0

    .line 51
    iput-wide p1, p0, Lcom/sekai/bank/models/responses/HealthResponse$MemoryInfo;->total:D

    return-void
.end method

.method public setUsed(D)V
    .locals 0

    .line 50
    iput-wide p1, p0, Lcom/sekai/bank/models/responses/HealthResponse$MemoryInfo;->used:D

    return-void
.end method
