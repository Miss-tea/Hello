.class public final synthetic Lcom/sekai/bank/utils/TokenManager$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lcom/sekai/bank/utils/TokenManager;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/sekai/bank/utils/TokenManager;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sekai/bank/utils/TokenManager$$ExternalSyntheticLambda2;->f$0:Lcom/sekai/bank/utils/TokenManager;

    iput-object p2, p0, Lcom/sekai/bank/utils/TokenManager$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/sekai/bank/utils/TokenManager$$ExternalSyntheticLambda2;->f$0:Lcom/sekai/bank/utils/TokenManager;

    iget-object v1, p0, Lcom/sekai/bank/utils/TokenManager$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sekai/bank/utils/TokenManager;->lambda$getStringValue$3$com-sekai-bank-utils-TokenManager(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
