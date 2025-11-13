.class public Lcom/android/settings/notification/app/AppNotificationTypeInfo;
.super Ljava/lang/Object;
.source "AppNotificationTypeInfo.java"


# instance fields
.field private contactId:Ljava/lang/Long;

.field private contactNumber:Ljava/lang/String;

.field private contactPhoto:Landroid/graphics/Bitmap;

.field private imageEntry:I

.field private isAddAppException:Ljava/lang/Boolean;

.field private mPackage:Ljava/lang/String;

.field private mPackageIcon:Landroid/graphics/drawable/Drawable;

.field private notificationType:Ljava/lang/String;

.field private selected:Ljava/lang/Boolean;

.field private selectedValue:Ljava/lang/String;

.field private show:Ljava/lang/Boolean;

.field private title:Ljava/lang/String;

.field private uId:I

.field private unSelectedValue:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/android/settings/notification/app/AppNotificationTypeInfo;->show:Ljava/lang/Boolean;

    .line 9
    iput-object v0, p0, Lcom/android/settings/notification/app/AppNotificationTypeInfo;->selected:Ljava/lang/Boolean;

    const-string v0, ""

    .line 10
    iput-object v0, p0, Lcom/android/settings/notification/app/AppNotificationTypeInfo;->title:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lcom/android/settings/notification/app/AppNotificationTypeInfo;->mPackage:Ljava/lang/String;

    const-string v0, "Allowed"

    .line 14
    iput-object v0, p0, Lcom/android/settings/notification/app/AppNotificationTypeInfo;->selectedValue:Ljava/lang/String;

    const-string v0, "Not allowed"

    .line 15
    iput-object v0, p0, Lcom/android/settings/notification/app/AppNotificationTypeInfo;->unSelectedValue:Ljava/lang/String;

    .line 18
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/android/settings/notification/app/AppNotificationTypeInfo;->isAddAppException:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public getAddAppException()Ljava/lang/Boolean;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/android/settings/notification/app/AppNotificationTypeInfo;->isAddAppException:Ljava/lang/Boolean;

    return-object p0
.end method

.method public getContactId()Ljava/lang/Long;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/android/settings/notification/app/AppNotificationTypeInfo;->contactId:Ljava/lang/Long;

    return-object p0
.end method

.method public getContactNumber()Ljava/lang/String;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/android/settings/notification/app/AppNotificationTypeInfo;->contactNumber:Ljava/lang/String;

    return-object p0
.end method

.method public getContactPhoto()Landroid/graphics/Bitmap;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/android/settings/notification/app/AppNotificationTypeInfo;->contactPhoto:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public getImageEntry()I
    .locals 0

    .line 90
    iget p0, p0, Lcom/android/settings/notification/app/AppNotificationTypeInfo;->imageEntry:I

    return p0
.end method

.method public getNotificationType()Ljava/lang/String;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/android/settings/notification/app/AppNotificationTypeInfo;->notificationType:Ljava/lang/String;

    return-object p0
.end method

.method public getSelected()Ljava/lang/Boolean;
    .locals 0

    .line 135
    iget-object p0, p0, Lcom/android/settings/notification/app/AppNotificationTypeInfo;->selected:Ljava/lang/Boolean;

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    .line 119
    iget-object p0, p0, Lcom/android/settings/notification/app/AppNotificationTypeInfo;->title:Ljava/lang/String;

    return-object p0
.end method

.method public getmPackage()Ljava/lang/String;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/android/settings/notification/app/AppNotificationTypeInfo;->mPackage:Ljava/lang/String;

    return-object p0
.end method

.method public getmPackageIcon()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/android/settings/notification/app/AppNotificationTypeInfo;->mPackageIcon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getuId()I
    .locals 0

    .line 98
    iget p0, p0, Lcom/android/settings/notification/app/AppNotificationTypeInfo;->uId:I

    return p0
.end method

.method public setAddAppException(Ljava/lang/Boolean;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/android/settings/notification/app/AppNotificationTypeInfo;->isAddAppException:Ljava/lang/Boolean;

    return-void
.end method

.method public setContactId(Ljava/lang/Long;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/android/settings/notification/app/AppNotificationTypeInfo;->contactId:Ljava/lang/Long;

    return-void
.end method

.method public setContactNumber(Ljava/lang/String;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/android/settings/notification/app/AppNotificationTypeInfo;->contactNumber:Ljava/lang/String;

    return-void
.end method

.method public setContactPhoto(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/android/settings/notification/app/AppNotificationTypeInfo;->contactPhoto:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setImageEntry(I)V
    .locals 0

    .line 94
    iput p1, p0, Lcom/android/settings/notification/app/AppNotificationTypeInfo;->imageEntry:I

    return-void
.end method

.method public setNotificationType(Ljava/lang/String;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/android/settings/notification/app/AppNotificationTypeInfo;->notificationType:Ljava/lang/String;

    return-void
.end method

.method public setSelected(Ljava/lang/Boolean;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/android/settings/notification/app/AppNotificationTypeInfo;->selected:Ljava/lang/Boolean;

    return-void
.end method

.method public setShow(Ljava/lang/Boolean;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/android/settings/notification/app/AppNotificationTypeInfo;->show:Ljava/lang/Boolean;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/android/settings/notification/app/AppNotificationTypeInfo;->title:Ljava/lang/String;

    return-void
.end method

.method public setmPackage(Ljava/lang/String;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/android/settings/notification/app/AppNotificationTypeInfo;->mPackage:Ljava/lang/String;

    return-void
.end method

.method public setmPackageIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/android/settings/notification/app/AppNotificationTypeInfo;->mPackageIcon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setuId(I)V
    .locals 0

    .line 102
    iput p1, p0, Lcom/android/settings/notification/app/AppNotificationTypeInfo;->uId:I

    return-void
.end method
