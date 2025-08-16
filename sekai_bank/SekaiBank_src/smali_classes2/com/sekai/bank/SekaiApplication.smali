.class public Lcom/sekai/bank/SekaiApplication;
.super Landroid/app/Application;
.source "SekaiApplication.java"


# static fields
.field private static instance:Lcom/sekai/bank/SekaiApplication;


# instance fields
.field private apiClient:Lcom/sekai/bank/network/ApiClient;

.field private tokenManager:Lcom/sekai/bank/utils/TokenManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/sekai/bank/SekaiApplication;
    .locals 1

    .line 35
    sget-object v0, Lcom/sekai/bank/SekaiApplication;->instance:Lcom/sekai/bank/SekaiApplication;

    return-object v0
.end method

.method private initializeDelayedTransactionMonitoring()V
    .locals 1

    .line 30
    new-instance v0, Lcom/sekai/bank/utils/delayed_transaction/DelayedTransactionManager;

    invoke-direct {v0, p0}, Lcom/sekai/bank/utils/delayed_transaction/DelayedTransactionManager;-><init>(Landroid/content/Context;)V

    .line 31
    invoke-virtual {v0}, Lcom/sekai/bank/utils/delayed_transaction/DelayedTransactionManager;->startPeriodicChecking()V

    return-void
.end method


# virtual methods
.method public getApiClient()Lcom/sekai/bank/network/ApiClient;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/sekai/bank/SekaiApplication;->apiClient:Lcom/sekai/bank/network/ApiClient;

    return-object v0
.end method

.method public getTokenManager()Lcom/sekai/bank/utils/TokenManager;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/sekai/bank/SekaiApplication;->tokenManager:Lcom/sekai/bank/utils/TokenManager;

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .line 16
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 17
    sput-object p0, Lcom/sekai/bank/SekaiApplication;->instance:Lcom/sekai/bank/SekaiApplication;

    .line 20
    new-instance v0, Lcom/sekai/bank/utils/TokenManager;

    invoke-direct {v0, p0}, Lcom/sekai/bank/utils/TokenManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sekai/bank/SekaiApplication;->tokenManager:Lcom/sekai/bank/utils/TokenManager;

    .line 23
    new-instance v0, Lcom/sekai/bank/network/ApiClient;

    iget-object v1, p0, Lcom/sekai/bank/SekaiApplication;->tokenManager:Lcom/sekai/bank/utils/TokenManager;

    invoke-direct {v0, v1}, Lcom/sekai/bank/network/ApiClient;-><init>(Lcom/sekai/bank/utils/TokenManager;)V

    iput-object v0, p0, Lcom/sekai/bank/SekaiApplication;->apiClient:Lcom/sekai/bank/network/ApiClient;

    .line 26
    invoke-direct {p0}, Lcom/sekai/bank/SekaiApplication;->initializeDelayedTransactionMonitoring()V

    return-void
.end method
