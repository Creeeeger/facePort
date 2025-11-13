.class public Lcom/android/settings/applications/credentials/DefaultCombinedPickerPrivate;
.super Lcom/android/settings/applications/credentials/DefaultCombinedPicker;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final synthetic $r8$clinit:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/applications/credentials/DefaultCombinedPicker;-><init>()V

    return-void
.end method


# virtual methods
.method public final getUser()I
    .locals 0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p0

    return p0
.end method
