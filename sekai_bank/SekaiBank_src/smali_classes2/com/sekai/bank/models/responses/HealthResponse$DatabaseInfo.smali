.class public Lcom/sekai/bank/models/responses/HealthResponse$DatabaseInfo;
.super Ljava/lang/Object;
.source "HealthResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sekai/bank/models/responses/HealthResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DatabaseInfo"
.end annotation


# instance fields
.field private name:Ljava/lang/String;

.field private status:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/sekai/bank/models/responses/HealthResponse$DatabaseInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/sekai/bank/models/responses/HealthResponse$DatabaseInfo;->status:Ljava/lang/String;

    return-object v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/sekai/bank/models/responses/HealthResponse$DatabaseInfo;->name:Ljava/lang/String;

    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/sekai/bank/models/responses/HealthResponse$DatabaseInfo;->status:Ljava/lang/String;

    return-void
.end method
