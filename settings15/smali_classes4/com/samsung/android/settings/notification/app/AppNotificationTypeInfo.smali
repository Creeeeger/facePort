.class public final Lcom/samsung/android/settings/notification/app/AppNotificationTypeInfo;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public contactId:Ljava/lang/Long;

.field public contactNumber:Ljava/lang/String;

.field public contactPhoto:Landroid/graphics/Bitmap;

.field public imageEntry:I

.field public isAddAppException:Ljava/lang/Boolean;

.field public mPackage:Ljava/lang/String;

.field public mPackageIcon:Landroid/graphics/drawable/Drawable;

.field public notificationType:Ljava/lang/String;

.field public selected:Ljava/lang/Boolean;

.field public title:Ljava/lang/String;

.field public uId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/samsung/android/settings/notification/app/AppNotificationTypeInfo;->selected:Ljava/lang/Boolean;

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/settings/notification/app/AppNotificationTypeInfo;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/settings/notification/app/AppNotificationTypeInfo;->mPackage:Ljava/lang/String;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/samsung/android/settings/notification/app/AppNotificationTypeInfo;->isAddAppException:Ljava/lang/Boolean;

    return-void
.end method
