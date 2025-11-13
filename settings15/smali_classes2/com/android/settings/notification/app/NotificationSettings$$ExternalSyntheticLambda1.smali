.class public final synthetic Lcom/android/settings/notification/app/NotificationSettings$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/notification/app/NotificationSettings;

.field public final synthetic f$1:Landroid/app/NotificationChannel;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/notification/app/NotificationSettings;Landroid/app/NotificationChannel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/notification/app/NotificationSettings$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/notification/app/NotificationSettings;

    iput-object p2, p0, Lcom/android/settings/notification/app/NotificationSettings$$ExternalSyntheticLambda1;->f$1:Landroid/app/NotificationChannel;

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationSettings$$ExternalSyntheticLambda1;->f$1:Landroid/app/NotificationChannel;

    sget-boolean v1, Lcom/android/settings/notification/app/NotificationSettings;->DEBUG:Z

    iget-object p0, p0, Lcom/android/settings/notification/app/NotificationSettings$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/notification/app/NotificationSettings;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x3

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {v0, p2}, Landroid/app/NotificationChannel;->setImportance(I)V

    const/4 p2, 0x4

    invoke-virtual {v0, p2}, Landroid/app/NotificationChannel;->lockFields(I)V

    check-cast p1, Lcom/android/settingslib/PrimarySwitchPreference;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/android/settings/notification/app/NotificationSettings;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object p2, p0, Lcom/android/settings/notification/app/NotificationSettings;->mPkg:Ljava/lang/String;

    iget p0, p0, Lcom/android/settings/notification/app/NotificationSettings;->mUid:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2, p0, v0}, Lcom/android/settings/notification/NotificationBackend;->updateChannel(Ljava/lang/String;ILandroid/app/NotificationChannel;)V

    const/4 p0, 0x1

    return p0
.end method
