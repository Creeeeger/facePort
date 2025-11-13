.class Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;
.super Ljava/lang/Object;
.source "PaymentBackend.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/nfc/PaymentBackend;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PaymentAppInfo"
.end annotation


# instance fields
.field banner:Landroid/graphics/drawable/Drawable;

.field public componentName:Landroid/content/ComponentName;

.field description:Ljava/lang/CharSequence;

.field icon:Landroid/graphics/drawable/Drawable;

.field isCurrentUser:Z

.field isDefault:Z

.field isManagedProfile:Z

.field isNonAidService:Z

.field label:Ljava/lang/CharSequence;

.field public settingsComponent:Landroid/content/ComponentName;

.field userHandle:Landroid/os/UserHandle;

.field userName:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
