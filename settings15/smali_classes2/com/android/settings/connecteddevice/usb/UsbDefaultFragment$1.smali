.class public final Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment$1;
.super Lcom/android/settingslib/widget/CandidateInfo;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic val$key:Ljava/lang/String;

.field public final synthetic val$title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment$1;->val$title:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment$1;->val$key:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/android/settingslib/widget/CandidateInfo;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public final getKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment$1;->val$key:Ljava/lang/String;

    return-object p0
.end method

.method public final loadIcon()Landroid/graphics/drawable/Drawable;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final loadLabel()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment$1;->val$title:Ljava/lang/String;

    return-object p0
.end method
