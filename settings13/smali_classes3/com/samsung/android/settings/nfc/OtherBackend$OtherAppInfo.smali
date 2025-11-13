.class Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;
.super Ljava/lang/Object;
.source "OtherBackend.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/nfc/OtherBackend;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "OtherAppInfo"
.end annotation


# instance fields
.field banner:Landroid/graphics/drawable/Drawable;

.field caption:Ljava/lang/CharSequence;

.field public componentName:Landroid/content/ComponentName;

.field icon:Landroid/graphics/drawable/Drawable;

.field isCurrentUser:Z

.field isManagedProfile:Z

.field isNonAidService:Z

.field isSelected:Z

.field seName:Ljava/lang/String;

.field title:Ljava/lang/CharSequence;

.field public userHandle:Landroid/os/UserHandle;

.field userName:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
