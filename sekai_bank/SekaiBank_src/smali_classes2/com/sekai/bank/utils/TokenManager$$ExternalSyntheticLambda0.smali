.class public final synthetic Lcom/sekai/bank/utils/TokenManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/sekai/bank/utils/TokenManager;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Ljava/lang/String;

.field public final synthetic f$5:J


# direct methods
.method public synthetic constructor <init>(Lcom/sekai/bank/utils/TokenManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sekai/bank/utils/TokenManager$$ExternalSyntheticLambda0;->f$0:Lcom/sekai/bank/utils/TokenManager;

    iput-object p2, p0, Lcom/sekai/bank/utils/TokenManager$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/sekai/bank/utils/TokenManager$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/sekai/bank/utils/TokenManager$$ExternalSyntheticLambda0;->f$3:Ljava/lang/String;

    iput-object p5, p0, Lcom/sekai/bank/utils/TokenManager$$ExternalSyntheticLambda0;->f$4:Ljava/lang/String;

    iput-wide p6, p0, Lcom/sekai/bank/utils/TokenManager$$ExternalSyntheticLambda0;->f$5:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 0
    iget-object v0, p0, Lcom/sekai/bank/utils/TokenManager$$ExternalSyntheticLambda0;->f$0:Lcom/sekai/bank/utils/TokenManager;

    iget-object v1, p0, Lcom/sekai/bank/utils/TokenManager$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/sekai/bank/utils/TokenManager$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lcom/sekai/bank/utils/TokenManager$$ExternalSyntheticLambda0;->f$3:Ljava/lang/String;

    iget-object v4, p0, Lcom/sekai/bank/utils/TokenManager$$ExternalSyntheticLambda0;->f$4:Ljava/lang/String;

    iget-wide v5, p0, Lcom/sekai/bank/utils/TokenManager$$ExternalSyntheticLambda0;->f$5:J

    invoke-virtual/range {v0 .. v6}, Lcom/sekai/bank/utils/TokenManager;->lambda$saveTokens$0$com-sekai-bank-utils-TokenManager(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method
