.class public Lcom/samsung/android/sdhms/SemAppRestrictionManager;
.super Ljava/lang/Object;
.source "SemAppRestrictionManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdhms/SemAppRestrictionManager$RestrictionInfo;,
        Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/sdhms/SemAppRestrictionManager;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist RESTRICTION_REASON_TYPE_ADD_ANOMALY_AUTO:Ljava/lang/String; = "added_from_anomaly_auto"

.field public static final whitelist RESTRICTION_REASON_TYPE_ADD_ANOMALY_MANUAL:Ljava/lang/String; = "added_from_anomaly_manual"

.field public static final whitelist RESTRICTION_REASON_TYPE_ADD_MARS_AUTO:Ljava/lang/String; = "added_from_mars_auto"

.field public static final whitelist RESTRICTION_REASON_TYPE_ADD_MARS_AUTO_SPECIFIC:Ljava/lang/String; = "added_from_mars_auto_specific"

.field public static final whitelist RESTRICTION_REASON_TYPE_ADD_MARS_MANUAL_SPECIFIC:Ljava/lang/String; = "added_from_mars_manual_specific"

.field public static final whitelist RESTRICTION_REASON_TYPE_ADD_POLICY_IN_CHINA:Ljava/lang/String; = "added_from_policy_in_china"

.field public static final whitelist RESTRICTION_REASON_TYPE_ADD_PRE_O:Ljava/lang/String; = "added_from_pre_o"

.field public static final whitelist RESTRICTION_REASON_TYPE_ADD_UNKNOWN:Ljava/lang/String; = "added_from_unknown"

.field public static final whitelist RESTRICTION_REASON_TYPE_ADD_USER_MANUAL:Ljava/lang/String; = "added_from_user_manual"

.field public static final whitelist RESTRICTION_REASON_TYPE_DEFAULT:Ljava/lang/String; = "default"

.field public static final whitelist RESTRICTION_REASON_TYPE_DELETE_MARS_AUTO:Ljava/lang/String; = "deleted_from_mars_auto"

.field public static final whitelist RESTRICTION_REASON_TYPE_DELETE_POLICY_IN_CHINA:Ljava/lang/String; = "deleted_from_policy_in_china"

.field public static final whitelist RESTRICTION_REASON_TYPE_DELETE_POST_O:Ljava/lang/String; = "deleted_from_post_o"

.field public static final whitelist RESTRICTION_REASON_TYPE_DELETE_UNKNOWN:Ljava/lang/String; = "deleted_from_unknown"

.field public static final whitelist RESTRICTION_REASON_TYPE_DELETE_USER_MANUAL:Ljava/lang/String; = "deleted_from_user_manual"

.field public static final whitelist RESTRICTION_STATE_NONE:I = 0x0

.field public static final whitelist RESTRICTION_STATE_OFF:I = 0x2

.field public static final whitelist RESTRICTION_STATE_ON:I = 0x1

.field public static final whitelist RESTRICTION_TYPE_DISABLE:I = 0x0

.field public static final whitelist RESTRICTION_TYPE_DISABLE_SPECIFIC:I = 0x4

.field public static final whitelist RESTRICTION_TYPE_DISABLE_WITHIN_24_HOUR:I = 0x2

.field public static final whitelist RESTRICTION_TYPE_NEVER_SLEEP:I = 0x3

.field public static final whitelist RESTRICTION_TYPE_SLEEP:I = 0x1


# instance fields
.field private blacklist mContext:Landroid/content/Context;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/sdhms/SemAppRestrictionManager$1;

    invoke-direct {v0}, Lcom/samsung/android/sdhms/SemAppRestrictionManager$1;-><init>()V

    sput-object v0, Lcom/samsung/android/sdhms/SemAppRestrictionManager;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdhms/SemAppRestrictionManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdhms/SemAppRestrictionManager;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/samsung/android/sdhms/SemAppRestrictionManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdhms/SemAppRestrictionManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method private blacklist checkPermission(Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/sdhms/SemAppRestrictionManager;->mContext:Landroid/content/Context;

    const-string v1, "Must have permission "

    const/4 v2, -0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdhms/SemAppRestrictionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v3, 0x3e8

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    if-eq v3, v4, :cond_3

    invoke-static {p1, v0}, Landroid/app/ActivityManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result v3

    if-eq v3, v2, :cond_2

    goto :goto_1

    :cond_2
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public whitelist canRestrict(ILjava/lang/String;I)Z
    .locals 2

    :try_start_0
    const-string v0, "com.samsung.android.permission.SEM_APP_RESTRICTION"

    invoke-direct {p0, v0}, Lcom/samsung/android/sdhms/SemAppRestrictionManager;->checkPermission(Ljava/lang/String;)V

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Landroid/app/IActivityManager;->canRestrict(ILjava/lang/String;I)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist clearRestrictionInfo(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;",
            ">;)Z"
        }
    .end annotation

    :try_start_0
    const-string v0, "com.samsung.android.permission.SEM_APP_RESTRICTION"

    invoke-direct {p0, v0}, Lcom/samsung/android/sdhms/SemAppRestrictionManager;->checkPermission(Ljava/lang/String;)V

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->clearRestrictionInfo(Ljava/util/List;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getAllList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;",
            ">;"
        }
    .end annotation

    :try_start_0
    const-string v0, "com.samsung.android.permission.SEM_APP_RESTRICTION"

    invoke-direct {p0, v0}, Lcom/samsung/android/sdhms/SemAppRestrictionManager;->checkPermission(Ljava/lang/String;)V

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/app/IActivityManager;->getAllRestrictedList()Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getRestrictableList(I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;",
            ">;"
        }
    .end annotation

    :try_start_0
    const-string v0, "com.samsung.android.permission.SEM_APP_RESTRICTION"

    invoke-direct {p0, v0}, Lcom/samsung/android/sdhms/SemAppRestrictionManager;->checkPermission(Ljava/lang/String;)V

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->getRestrictableList(I)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getRestrictedList(I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;",
            ">;"
        }
    .end annotation

    :try_start_0
    const-string v0, "com.samsung.android.permission.SEM_APP_RESTRICTION"

    invoke-direct {p0, v0}, Lcom/samsung/android/sdhms/SemAppRestrictionManager;->checkPermission(Ljava/lang/String;)V

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->getRestrictedList(I)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getRestrictionInfo(ILjava/lang/String;I)Lcom/samsung/android/sdhms/SemAppRestrictionManager$RestrictionInfo;
    .locals 2

    :try_start_0
    const-string v0, "com.samsung.android.permission.SEM_APP_RESTRICTION"

    invoke-direct {p0, v0}, Lcom/samsung/android/sdhms/SemAppRestrictionManager;->checkPermission(Ljava/lang/String;)V

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Landroid/app/IActivityManager;->getRestrictionInfo(ILjava/lang/String;I)Lcom/samsung/android/sdhms/SemAppRestrictionManager$RestrictionInfo;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist restrict(IIZLjava/lang/String;I)Z
    .locals 7

    :try_start_0
    const-string v0, "com.samsung.android.permission.SEM_APP_RESTRICTION"

    invoke-direct {p0, v0}, Lcom/samsung/android/sdhms/SemAppRestrictionManager;->checkPermission(Ljava/lang/String;)V

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v1, v0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Landroid/app/IActivityManager;->restrict(IIZLjava/lang/String;I)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist updateRestrictionInfo(Lcom/samsung/android/sdhms/SemAppRestrictionManager$RestrictionInfo;Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdhms/SemAppRestrictionManager$RestrictionInfo;",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;",
            ">;)Z"
        }
    .end annotation

    :try_start_0
    const-string v0, "com.samsung.android.permission.SEM_APP_RESTRICTION"

    invoke-direct {p0, v0}, Lcom/samsung/android/sdhms/SemAppRestrictionManager;->checkPermission(Ljava/lang/String;)V

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Landroid/app/IActivityManager;->updateRestrictionInfo(Lcom/samsung/android/sdhms/SemAppRestrictionManager$RestrictionInfo;Ljava/util/List;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    return-void
.end method
