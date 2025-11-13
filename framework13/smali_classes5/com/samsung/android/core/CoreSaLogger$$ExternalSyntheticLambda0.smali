.class public final synthetic Lcom/samsung/android/core/CoreSaLogger$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Ljava/lang/String;

.field public final synthetic blacklist f$1:Ljava/lang/String;

.field public final synthetic blacklist f$2:J

.field public final synthetic blacklist f$3:Ljava/lang/String;

.field public final synthetic blacklist f$4:Landroid/content/Context;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/core/CoreSaLogger$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/core/CoreSaLogger$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iput-wide p3, p0, Lcom/samsung/android/core/CoreSaLogger$$ExternalSyntheticLambda0;->f$2:J

    iput-object p5, p0, Lcom/samsung/android/core/CoreSaLogger$$ExternalSyntheticLambda0;->f$3:Ljava/lang/String;

    iput-object p6, p0, Lcom/samsung/android/core/CoreSaLogger$$ExternalSyntheticLambda0;->f$4:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/core/CoreSaLogger$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/core/CoreSaLogger$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iget-wide v2, p0, Lcom/samsung/android/core/CoreSaLogger$$ExternalSyntheticLambda0;->f$2:J

    iget-object v4, p0, Lcom/samsung/android/core/CoreSaLogger$$ExternalSyntheticLambda0;->f$3:Ljava/lang/String;

    iget-object v5, p0, Lcom/samsung/android/core/CoreSaLogger$$ExternalSyntheticLambda0;->f$4:Landroid/content/Context;

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/core/CoreSaLogger;->lambda$sendSaLoggingBroadcast$0(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Landroid/content/Context;)V

    return-void
.end method
