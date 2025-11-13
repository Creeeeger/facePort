.class public Landroid/app/ApplicationErrorReport;
.super Ljava/lang/Object;
.source "ApplicationErrorReport.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ApplicationErrorReport$RunningServiceInfo;,
        Landroid/app/ApplicationErrorReport$BatteryInfo;,
        Landroid/app/ApplicationErrorReport$AnrInfo;,
        Landroid/app/ApplicationErrorReport$ParcelableCrashInfo;,
        Landroid/app/ApplicationErrorReport$CrashInfo;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/ApplicationErrorReport;",
            ">;"
        }
    .end annotation
.end field

.field static final greylist-max-o DEFAULT_ERROR_RECEIVER_PROPERTY:Ljava/lang/String; = "ro.error.receiver.default"

.field private static final blacklist PLAY_STORE_ERROR_RECEIVER_PACKAGE_NAME:Ljava/lang/String; = "com.android.vending"

.field private static final blacklist SAMSUNG_MEMBERS_ERROR_RECEIVER_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.voc"

.field private static final blacklist SAMSUNG_PLUS_ERROR_RECEIVER_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.oh"

.field private static final blacklist START_WITH_SAMSUNG:Ljava/lang/String; = "com.samsung."

.field private static final blacklist START_WITH_SEC:Ljava/lang/String; = "com.sec."

.field static final greylist-max-o SYSTEM_APPS_ERROR_RECEIVER_PROPERTY:Ljava/lang/String; = "ro.error.receiver.system.apps"

.field public static final whitelist TYPE_ANR:I = 0x2

.field public static final whitelist TYPE_BATTERY:I = 0x3

.field public static final whitelist TYPE_CRASH:I = 0x1

.field public static final whitelist TYPE_NONE:I = 0x0

.field public static final whitelist TYPE_RUNNING_SERVICE:I = 0x5


# instance fields
.field public whitelist anrInfo:Landroid/app/ApplicationErrorReport$AnrInfo;

.field public whitelist batteryInfo:Landroid/app/ApplicationErrorReport$BatteryInfo;

.field public whitelist crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

.field public whitelist installerPackageName:Ljava/lang/String;

.field public whitelist packageName:Ljava/lang/String;

.field public whitelist processName:Ljava/lang/String;

.field public whitelist runningServiceInfo:Landroid/app/ApplicationErrorReport$RunningServiceInfo;

.field public whitelist systemApp:Z

.field public whitelist time:J

.field public whitelist type:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 723
    new-instance v0, Landroid/app/ApplicationErrorReport$1;

    invoke-direct {v0}, Landroid/app/ApplicationErrorReport$1;-><init>()V

    sput-object v0, Landroid/app/ApplicationErrorReport;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 0

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    invoke-virtual {p0, p1}, Landroid/app/ApplicationErrorReport;->readFromParcel(Landroid/os/Parcel;)V

    .line 171
    return-void
.end method

.method public static whitelist getErrorReportReceiver(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/ComponentName;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "appFlags"    # I

    .line 184
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "send_action_app_error"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 188
    .local v0, "enabled":I
    invoke-static {p1}, Landroid/app/ApplicationErrorReport;->isSamsungPackage(Ljava/lang/String;)Z

    move-result v1

    .line 189
    .local v1, "samsungPackage":Z
    const/4 v3, 0x0

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    .line 191
    return-object v3

    .line 194
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 197
    .local v4, "pm":Landroid/content/pm/PackageManager;
    const/4 v5, 0x0

    .line 198
    .local v5, "candidate":Ljava/lang/String;
    const/4 v6, 0x0

    .line 201
    .local v6, "result":Landroid/content/ComponentName;
    :try_start_0
    invoke-virtual {v4, p1}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v7

    .line 204
    goto :goto_0

    .line 202
    :catch_0
    move-exception v7

    .line 210
    :goto_0
    if-eqz v1, :cond_2

    const-string v7, "com.android.vending"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 212
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "device_provisioned"

    invoke-static {v7, v8, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 214
    .local v2, "provisioned":I
    if-eqz v2, :cond_2

    .line 215
    const/4 v7, 0x0

    .line 217
    .local v7, "errorReportReceiver":Landroid/content/ComponentName;
    const-string v8, "com.samsung.android.voc"

    invoke-static {v4, p1, v8}, Landroid/app/ApplicationErrorReport;->getErrorReportReceiver(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v7

    .line 219
    if-eqz v7, :cond_1

    .line 220
    return-object v7

    .line 223
    :cond_1
    const-string v8, "com.samsung.oh"

    invoke-static {v4, p1, v8}, Landroid/app/ApplicationErrorReport;->getErrorReportReceiver(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v7

    .line 225
    if-eqz v7, :cond_2

    .line 226
    return-object v7

    .line 230
    .end local v2    # "provisioned":I
    .end local v7    # "errorReportReceiver":Landroid/content/ComponentName;
    :cond_2
    if-nez v0, :cond_3

    .line 231
    return-object v3

    .line 236
    :cond_3
    if-eqz v5, :cond_4

    .line 237
    invoke-static {v4, p1, v5}, Landroid/app/ApplicationErrorReport;->getErrorReportReceiver(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v6

    .line 238
    if-eqz v6, :cond_4

    .line 239
    return-object v6

    .line 245
    :cond_4
    and-int/lit8 v2, p2, 0x1

    if-eqz v2, :cond_5

    .line 246
    const-string/jumbo v2, "ro.error.receiver.system.apps"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 247
    invoke-static {v4, p1, v5}, Landroid/app/ApplicationErrorReport;->getErrorReportReceiver(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v6

    .line 248
    if-eqz v6, :cond_5

    .line 249
    return-object v6

    .line 254
    :cond_5
    const-string/jumbo v2, "ro.error.receiver.default"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 255
    .end local v5    # "candidate":Ljava/lang/String;
    .local v2, "candidate":Ljava/lang/String;
    invoke-static {v4, p1, v2}, Landroid/app/ApplicationErrorReport;->getErrorReportReceiver(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    return-object v3
.end method

.method static greylist-max-o getErrorReportReceiver(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ComponentName;
    .locals 4
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "errorPackage"    # Ljava/lang/String;
    .param p2, "receiverPackage"    # Ljava/lang/String;

    .line 269
    const/4 v0, 0x0

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 274
    :cond_0
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 275
    return-object v0

    .line 278
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.APP_ERROR"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 279
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 280
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 281
    .local v2, "info":Landroid/content/pm/ResolveInfo;
    if-eqz v2, :cond_3

    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v3, :cond_2

    goto :goto_0

    .line 284
    :cond_2
    new-instance v0, Landroid/content/ComponentName;

    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, p2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 282
    :cond_3
    :goto_0
    return-object v0

    .line 270
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "info":Landroid/content/pm/ResolveInfo;
    :cond_4
    :goto_1
    return-object v0
.end method

.method private static blacklist isSamsungPackage(Ljava/lang/String;)Z
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;

    .line 175
    if-eqz p0, :cond_1

    .line 176
    const-string v0, "com.sec."

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 177
    const-string v0, "com.samsung."

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 175
    :goto_0
    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 735
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist dump(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 3
    .param p1, "pw"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 742
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/ApplicationErrorReport;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 743
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "packageName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ApplicationErrorReport;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 744
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "installerPackageName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ApplicationErrorReport;->installerPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 745
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "processName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ApplicationErrorReport;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 746
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "time: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/app/ApplicationErrorReport;->time:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 747
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "systemApp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/app/ApplicationErrorReport;->systemApp:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 749
    iget v0, p0, Landroid/app/ApplicationErrorReport;->type:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 760
    :pswitch_1
    iget-object v0, p0, Landroid/app/ApplicationErrorReport;->runningServiceInfo:Landroid/app/ApplicationErrorReport$RunningServiceInfo;

    invoke-virtual {v0, p1, p2}, Landroid/app/ApplicationErrorReport$RunningServiceInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    goto :goto_0

    .line 757
    :pswitch_2
    iget-object v0, p0, Landroid/app/ApplicationErrorReport;->batteryInfo:Landroid/app/ApplicationErrorReport$BatteryInfo;

    invoke-virtual {v0, p1, p2}, Landroid/app/ApplicationErrorReport$BatteryInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 758
    goto :goto_0

    .line 754
    :pswitch_3
    iget-object v0, p0, Landroid/app/ApplicationErrorReport;->anrInfo:Landroid/app/ApplicationErrorReport$AnrInfo;

    invoke-virtual {v0, p1, p2}, Landroid/app/ApplicationErrorReport$AnrInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 755
    goto :goto_0

    .line 751
    :pswitch_4
    iget-object v0, p0, Landroid/app/ApplicationErrorReport;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    invoke-virtual {v0, p1, p2}, Landroid/app/ApplicationErrorReport$CrashInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 752
    nop

    .line 763
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public whitelist readFromParcel(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 315
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ApplicationErrorReport;->type:I

    .line 316
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ApplicationErrorReport;->packageName:Ljava/lang/String;

    .line 317
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ApplicationErrorReport;->installerPackageName:Ljava/lang/String;

    .line 318
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ApplicationErrorReport;->processName:Ljava/lang/String;

    .line 319
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/ApplicationErrorReport;->time:J

    .line 320
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/app/ApplicationErrorReport;->systemApp:Z

    .line 321
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_1

    move v1, v2

    :cond_1
    move v0, v1

    .line 323
    .local v0, "hasCrashInfo":Z
    iget v1, p0, Landroid/app/ApplicationErrorReport;->type:I

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_2

    .line 343
    :pswitch_1
    iput-object v2, p0, Landroid/app/ApplicationErrorReport;->batteryInfo:Landroid/app/ApplicationErrorReport$BatteryInfo;

    .line 344
    iput-object v2, p0, Landroid/app/ApplicationErrorReport;->anrInfo:Landroid/app/ApplicationErrorReport$AnrInfo;

    .line 345
    iput-object v2, p0, Landroid/app/ApplicationErrorReport;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    .line 346
    new-instance v1, Landroid/app/ApplicationErrorReport$RunningServiceInfo;

    invoke-direct {v1, p1}, Landroid/app/ApplicationErrorReport$RunningServiceInfo;-><init>(Landroid/os/Parcel;)V

    iput-object v1, p0, Landroid/app/ApplicationErrorReport;->runningServiceInfo:Landroid/app/ApplicationErrorReport$RunningServiceInfo;

    goto :goto_2

    .line 337
    :pswitch_2
    new-instance v1, Landroid/app/ApplicationErrorReport$BatteryInfo;

    invoke-direct {v1, p1}, Landroid/app/ApplicationErrorReport$BatteryInfo;-><init>(Landroid/os/Parcel;)V

    iput-object v1, p0, Landroid/app/ApplicationErrorReport;->batteryInfo:Landroid/app/ApplicationErrorReport$BatteryInfo;

    .line 338
    iput-object v2, p0, Landroid/app/ApplicationErrorReport;->anrInfo:Landroid/app/ApplicationErrorReport$AnrInfo;

    .line 339
    iput-object v2, p0, Landroid/app/ApplicationErrorReport;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    .line 340
    iput-object v2, p0, Landroid/app/ApplicationErrorReport;->runningServiceInfo:Landroid/app/ApplicationErrorReport$RunningServiceInfo;

    .line 341
    goto :goto_2

    .line 331
    :pswitch_3
    new-instance v1, Landroid/app/ApplicationErrorReport$AnrInfo;

    invoke-direct {v1, p1}, Landroid/app/ApplicationErrorReport$AnrInfo;-><init>(Landroid/os/Parcel;)V

    iput-object v1, p0, Landroid/app/ApplicationErrorReport;->anrInfo:Landroid/app/ApplicationErrorReport$AnrInfo;

    .line 332
    iput-object v2, p0, Landroid/app/ApplicationErrorReport;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    .line 333
    iput-object v2, p0, Landroid/app/ApplicationErrorReport;->batteryInfo:Landroid/app/ApplicationErrorReport$BatteryInfo;

    .line 334
    iput-object v2, p0, Landroid/app/ApplicationErrorReport;->runningServiceInfo:Landroid/app/ApplicationErrorReport$RunningServiceInfo;

    .line 335
    goto :goto_2

    .line 325
    :pswitch_4
    if-eqz v0, :cond_2

    new-instance v1, Landroid/app/ApplicationErrorReport$CrashInfo;

    invoke-direct {v1, p1}, Landroid/app/ApplicationErrorReport$CrashInfo;-><init>(Landroid/os/Parcel;)V

    goto :goto_1

    :cond_2
    move-object v1, v2

    :goto_1
    iput-object v1, p0, Landroid/app/ApplicationErrorReport;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    .line 326
    iput-object v2, p0, Landroid/app/ApplicationErrorReport;->anrInfo:Landroid/app/ApplicationErrorReport$AnrInfo;

    .line 327
    iput-object v2, p0, Landroid/app/ApplicationErrorReport;->batteryInfo:Landroid/app/ApplicationErrorReport$BatteryInfo;

    .line 328
    iput-object v2, p0, Landroid/app/ApplicationErrorReport;->runningServiceInfo:Landroid/app/ApplicationErrorReport$RunningServiceInfo;

    .line 329
    nop

    .line 349
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 288
    iget v0, p0, Landroid/app/ApplicationErrorReport;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 289
    iget-object v0, p0, Landroid/app/ApplicationErrorReport;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 290
    iget-object v0, p0, Landroid/app/ApplicationErrorReport;->installerPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 291
    iget-object v0, p0, Landroid/app/ApplicationErrorReport;->processName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 292
    iget-wide v0, p0, Landroid/app/ApplicationErrorReport;->time:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 293
    iget-boolean v0, p0, Landroid/app/ApplicationErrorReport;->systemApp:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 294
    iget-object v0, p0, Landroid/app/ApplicationErrorReport;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 296
    iget v0, p0, Landroid/app/ApplicationErrorReport;->type:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    .line 309
    :pswitch_1
    iget-object v0, p0, Landroid/app/ApplicationErrorReport;->runningServiceInfo:Landroid/app/ApplicationErrorReport$RunningServiceInfo;

    invoke-virtual {v0, p1, p2}, Landroid/app/ApplicationErrorReport$RunningServiceInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 306
    :pswitch_2
    iget-object v0, p0, Landroid/app/ApplicationErrorReport;->batteryInfo:Landroid/app/ApplicationErrorReport$BatteryInfo;

    invoke-virtual {v0, p1, p2}, Landroid/app/ApplicationErrorReport$BatteryInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 307
    goto :goto_1

    .line 303
    :pswitch_3
    iget-object v0, p0, Landroid/app/ApplicationErrorReport;->anrInfo:Landroid/app/ApplicationErrorReport$AnrInfo;

    invoke-virtual {v0, p1, p2}, Landroid/app/ApplicationErrorReport$AnrInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 304
    goto :goto_1

    .line 298
    :pswitch_4
    iget-object v0, p0, Landroid/app/ApplicationErrorReport;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    if-eqz v0, :cond_1

    .line 299
    invoke-virtual {v0, p1, p2}, Landroid/app/ApplicationErrorReport$CrashInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 312
    :cond_1
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
