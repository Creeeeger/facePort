.class public final synthetic Lcom/android/systemui/biometrics/BiometricNotificationBroadcastReceiver$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/biometrics/BiometricNotificationDialogFactory$ActivityStarter;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/biometrics/BiometricNotificationBroadcastReceiver$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final startActivity(Landroid/content/Intent;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricNotificationBroadcastReceiver$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
