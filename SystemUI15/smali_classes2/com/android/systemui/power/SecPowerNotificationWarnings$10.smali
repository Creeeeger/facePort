.class public final Lcom/android/systemui/power/SecPowerNotificationWarnings$10;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/power/SecPowerNotificationWarnings;


# direct methods
.method public constructor <init>(Lcom/android/systemui/power/SecPowerNotificationWarnings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings$10;->this$0:Lcom/android/systemui/power/SecPowerNotificationWarnings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings$10;->this$0:Lcom/android/systemui/power/SecPowerNotificationWarnings;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mOverheatShutdownHappenedDialog:Landroidx/appcompat/app/AlertDialog;

    return-void
.end method
