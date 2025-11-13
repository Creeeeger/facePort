.class Lcom/samsung/android/settings/nfc/PaymentSettings$2;
.super Ljava/lang/Object;
.source "PaymentSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/nfc/PaymentSettings;->refresh()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/nfc/PaymentSettings;

.field final synthetic val$frameAnim:Landroid/graphics/drawable/AnimationDrawable;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/nfc/PaymentSettings;Landroid/graphics/drawable/AnimationDrawable;)V
    .locals 0

    .line 386
    iput-object p1, p0, Lcom/samsung/android/settings/nfc/PaymentSettings$2;->this$0:Lcom/samsung/android/settings/nfc/PaymentSettings;

    iput-object p2, p0, Lcom/samsung/android/settings/nfc/PaymentSettings$2;->val$frameAnim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 388
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/PaymentSettings$2;->val$frameAnim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    return-void
.end method
