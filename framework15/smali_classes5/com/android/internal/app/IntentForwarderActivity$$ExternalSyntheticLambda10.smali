.class public final synthetic Lcom/android/internal/app/IntentForwarderActivity$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/app/IntentForwarderActivity;

.field public final synthetic blacklist f$1:I

.field public final synthetic blacklist f$2:I

.field public final synthetic blacklist f$3:Landroid/content/Intent;

.field public final synthetic blacklist f$4:Landroid/content/Intent;

.field public final synthetic blacklist f$5:Ljava/lang/String;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/app/IntentForwarderActivity;IILandroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/app/IntentForwarderActivity$$ExternalSyntheticLambda10;->f$0:Lcom/android/internal/app/IntentForwarderActivity;

    iput p2, p0, Lcom/android/internal/app/IntentForwarderActivity$$ExternalSyntheticLambda10;->f$1:I

    iput p3, p0, Lcom/android/internal/app/IntentForwarderActivity$$ExternalSyntheticLambda10;->f$2:I

    iput-object p4, p0, Lcom/android/internal/app/IntentForwarderActivity$$ExternalSyntheticLambda10;->f$3:Landroid/content/Intent;

    iput-object p5, p0, Lcom/android/internal/app/IntentForwarderActivity$$ExternalSyntheticLambda10;->f$4:Landroid/content/Intent;

    iput-object p6, p0, Lcom/android/internal/app/IntentForwarderActivity$$ExternalSyntheticLambda10;->f$5:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final whitelist test-api apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Lcom/android/internal/app/IntentForwarderActivity$$ExternalSyntheticLambda10;->f$0:Lcom/android/internal/app/IntentForwarderActivity;

    iget v1, p0, Lcom/android/internal/app/IntentForwarderActivity$$ExternalSyntheticLambda10;->f$1:I

    iget v2, p0, Lcom/android/internal/app/IntentForwarderActivity$$ExternalSyntheticLambda10;->f$2:I

    iget-object v3, p0, Lcom/android/internal/app/IntentForwarderActivity$$ExternalSyntheticLambda10;->f$3:Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/internal/app/IntentForwarderActivity$$ExternalSyntheticLambda10;->f$4:Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/internal/app/IntentForwarderActivity$$ExternalSyntheticLambda10;->f$5:Ljava/lang/String;

    move-object v6, p1

    check-cast v6, Landroid/content/pm/ResolveInfo;

    invoke-static/range {v0 .. v6}, Lcom/android/internal/app/IntentForwarderActivity;->$r8$lambda$PxTv02hY1mxPo7Pg9wS0wbPYOUQ(Lcom/android/internal/app/IntentForwarderActivity;IILandroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ResolveInfo;)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    return-object p1
.end method
