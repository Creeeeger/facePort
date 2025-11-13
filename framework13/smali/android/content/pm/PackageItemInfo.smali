.class public Landroid/content/pm/PackageItemInfo;
.super Ljava/lang/Object;
.source "PackageItemInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/PackageItemInfo$DisplayNameComparator;
    }
.end annotation


# static fields
.field public static final blacklist DEFAULT_MAX_LABEL_SIZE_PX:F = 1000.0f

.field public static final greylist-max-o DUMP_FLAG_ALL:I = 0x3

.field public static final greylist-max-o DUMP_FLAG_APPLICATION:I = 0x2

.field public static final greylist-max-o DUMP_FLAG_DETAILS:I = 0x1

.field public static final greylist-max-o MAX_SAFE_LABEL_LENGTH:I = 0x3e8

.field public static final greylist SAFE_LABEL_FLAG_FIRST_LINE:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist SAFE_LABEL_FLAG_SINGLE_LINE:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist SAFE_LABEL_FLAG_TRIM:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static volatile greylist-max-o sForceSafeLabels:Z


# instance fields
.field public whitelist banner:I

.field public whitelist icon:I

.field public whitelist labelRes:I

.field public whitelist logo:I

.field public whitelist metaData:Landroid/os/Bundle;

.field public whitelist name:Ljava/lang/String;

.field public whitelist nonLocalizedLabel:Ljava/lang/CharSequence;

.field public whitelist packageName:Ljava/lang/String;

.field public greylist-max-o showUserIcon:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 114
    const/4 v0, 0x0

    sput-boolean v0, Landroid/content/pm/PackageItemInfo;->sForceSafeLabels:Z

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 1

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    const/16 v0, -0x2710

    iput v0, p0, Landroid/content/pm/PackageItemInfo;->showUserIcon:I

    .line 184
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/pm/PackageItemInfo;)V
    .locals 1
    .param p1, "orig"    # Landroid/content/pm/PackageItemInfo;

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    iget-object v0, p1, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    .line 188
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    .line 189
    :cond_0
    iget-object v0, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 190
    iget v0, p1, Landroid/content/pm/PackageItemInfo;->labelRes:I

    iput v0, p0, Landroid/content/pm/PackageItemInfo;->labelRes:I

    .line 191
    iget-object v0, p1, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 192
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 193
    :cond_1
    iget v0, p1, Landroid/content/pm/PackageItemInfo;->icon:I

    iput v0, p0, Landroid/content/pm/PackageItemInfo;->icon:I

    .line 194
    iget v0, p1, Landroid/content/pm/PackageItemInfo;->banner:I

    iput v0, p0, Landroid/content/pm/PackageItemInfo;->banner:I

    .line 195
    iget v0, p1, Landroid/content/pm/PackageItemInfo;->logo:I

    iput v0, p0, Landroid/content/pm/PackageItemInfo;->logo:I

    .line 196
    iget-object v0, p1, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    iput-object v0, p0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    .line 197
    iget v0, p1, Landroid/content/pm/PackageItemInfo;->showUserIcon:I

    iput v0, p0, Landroid/content/pm/PackageItemInfo;->showUserIcon:I

    .line 198
    return-void
.end method

.method protected constructor whitelist <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .line 494
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 495
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    .line 496
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 497
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PackageItemInfo;->labelRes:I

    .line 498
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    .line 499
    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 500
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PackageItemInfo;->icon:I

    .line 501
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PackageItemInfo;->logo:I

    .line 502
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    .line 503
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PackageItemInfo;->banner:I

    .line 504
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PackageItemInfo;->showUserIcon:I

    .line 505
    return-void
.end method

.method public static whitelist forceSafeLabels()V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 123
    const/4 v0, 0x1

    sput-boolean v0, Landroid/content/pm/PackageItemInfo;->sForceSafeLabels:Z

    .line 124
    return-void
.end method


# virtual methods
.method protected whitelist dumpBack(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 0
    .param p1, "pw"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 462
    return-void
.end method

.method public blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V
    .locals 5
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J
    .param p4, "dumpFlags"    # I

    .line 480
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 481
    .local v0, "token":J
    iget-object v2, p0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 482
    const-wide v3, 0x10900000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 484
    :cond_0
    const-wide v2, 0x10900000002L

    iget-object v4, p0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 485
    const-wide v2, 0x10500000003L

    iget v4, p0, Landroid/content/pm/PackageItemInfo;->labelRes:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 486
    iget-object v2, p0, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-eqz v2, :cond_1

    .line 487
    const-wide v3, 0x10900000004L

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 489
    :cond_1
    const-wide v2, 0x10500000005L

    iget v4, p0, Landroid/content/pm/PackageItemInfo;->icon:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 490
    const-wide v2, 0x10500000006L

    iget v4, p0, Landroid/content/pm/PackageItemInfo;->banner:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 491
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 492
    return-void
.end method

.method protected whitelist dumpFront(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 2
    .param p1, "pw"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 448
    iget-object v0, p0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 449
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 451
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 452
    iget v0, p0, Landroid/content/pm/PackageItemInfo;->labelRes:I

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    iget v0, p0, Landroid/content/pm/PackageItemInfo;->icon:I

    if-nez v0, :cond_1

    iget v0, p0, Landroid/content/pm/PackageItemInfo;->banner:I

    if-eqz v0, :cond_2

    .line 453
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "labelRes=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/content/pm/PackageItemInfo;->labelRes:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " nonLocalizedLabel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " icon=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/content/pm/PackageItemInfo;->icon:I

    .line 455
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " banner=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/content/pm/PackageItemInfo;->banner:I

    .line 456
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 453
    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 458
    :cond_2
    return-void
.end method

.method protected greylist-max-o getApplicationInfo()Landroid/content/pm/ApplicationInfo;
    .locals 1

    .line 516
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist loadBanner(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .line 334
    iget v0, p0, Landroid/content/pm/PackageItemInfo;->banner:I

    if-eqz v0, :cond_0

    .line 335
    iget-object v1, p0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/pm/PackageItemInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    invoke-virtual {p1, v1, v0, v2}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 336
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 337
    return-object v0

    .line 340
    .end local v0    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageItemInfo;->loadDefaultBanner(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected greylist-max-o loadDefaultBanner(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .line 370
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist-max-o loadDefaultIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .line 355
    invoke-virtual {p1}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected greylist-max-o loadDefaultLogo(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .line 406
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .line 295
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Landroid/content/pm/PackageItemInfo;->loadIcon(Landroid/content/pm/PackageManager;ZI)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public blacklist loadIcon(Landroid/content/pm/PackageManager;ZI)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "forIconTray"    # Z
    .param p3, "mode"    # I

    .line 300
    invoke-virtual {p0}, Landroid/content/pm/PackageItemInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {p1, p0, v0, p2, p3}, Landroid/content/pm/PackageManager;->loadItemIcon(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;ZI)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public whitelist loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .line 212
    sget-boolean v0, Landroid/content/pm/PackageItemInfo;->sForceSafeLabels:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 213
    const/high16 v0, 0x447a0000    # 1000.0f

    const/4 v1, 0x5

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/pm/PackageItemInfo;->loadSafeLabel(Landroid/content/pm/PackageManager;FI)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 218
    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageItemInfo;->loadUnsafeLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    const/16 v1, 0x3e8

    invoke-static {v0, v1}, Landroid/text/TextUtils;->trimToSize(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public whitelist loadLogo(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .line 385
    iget v0, p0, Landroid/content/pm/PackageItemInfo;->logo:I

    if-eqz v0, :cond_0

    .line 386
    iget-object v1, p0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/pm/PackageItemInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    invoke-virtual {p1, v1, v0, v2}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 387
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 388
    return-object v0

    .line 391
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageItemInfo;->loadDefaultLogo(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public whitelist loadSafeLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 260
    const/high16 v0, 0x447a0000    # 1000.0f

    const/4 v1, 0x5

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/pm/PackageItemInfo;->loadSafeLabel(Landroid/content/pm/PackageManager;FI)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public whitelist loadSafeLabel(Landroid/content/pm/PackageManager;FI)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "ellipsizeDip"    # F
    .param p3, "flags"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 274
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageItemInfo;->loadUnsafeLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3e8

    invoke-static {v0, v1, p2, p3}, Landroid/text/TextUtils;->makeSafeForPresentation(Ljava/lang/String;IFI)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public whitelist loadUnbadgedIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .line 319
    invoke-virtual {p0}, Landroid/content/pm/PackageItemInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Landroid/content/pm/PackageManager;->loadUnbadgedItemIcon(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o loadUnsafeLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    .locals 4
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .line 226
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getApplicationPolicy()Landroid/sec/enterprise/ApplicationPolicy;

    move-result-object v0

    .line 227
    .local v0, "appPolicy":Landroid/sec/enterprise/ApplicationPolicy;
    const/4 v1, 0x0

    .line 228
    .local v1, "userId":I
    invoke-virtual {p0}, Landroid/content/pm/PackageItemInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 229
    .local v2, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v2, :cond_0

    .line 230
    iget v3, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 232
    :cond_0
    iget-object v3, p0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3, v1}, Landroid/sec/enterprise/ApplicationPolicy;->getApplicationNameFromDb(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 233
    .local v3, "newName":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 234
    return-object v3

    .line 238
    .end local v0    # "appPolicy":Landroid/sec/enterprise/ApplicationPolicy;
    .end local v1    # "userId":I
    .end local v2    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "newName":Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    .line 239
    return-object v0

    .line 241
    :cond_2
    iget v0, p0, Landroid/content/pm/PackageItemInfo;->labelRes:I

    if-eqz v0, :cond_3

    .line 242
    iget-object v1, p0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/pm/PackageItemInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    invoke-virtual {p1, v1, v0, v2}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 243
    .local v0, "label":Ljava/lang/CharSequence;
    if-eqz v0, :cond_3

    .line 244
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 247
    .end local v0    # "label":Ljava/lang/CharSequence;
    :cond_3
    iget-object v0, p0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 248
    return-object v0

    .line 250
    :cond_4
    iget-object v0, p0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;
    .locals 3
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "name"    # Ljava/lang/String;

    .line 423
    iget-object v0, p0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 424
    invoke-virtual {v0, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 425
    .local v0, "resid":I
    if-eqz v0, :cond_0

    .line 426
    iget-object v1, p0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/pm/PackageItemInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    invoke-virtual {p1, v1, v0, v2}, Landroid/content/pm/PackageManager;->getXml(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    return-object v1

    .line 429
    .end local v0    # "resid":I
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "parcelableFlags"    # I

    .line 465
    iget-object v0, p0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 466
    iget-object v0, p0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 467
    iget v0, p0, Landroid/content/pm/PackageItemInfo;->labelRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 468
    iget-object v0, p0, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 469
    iget v0, p0, Landroid/content/pm/PackageItemInfo;->icon:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 470
    iget v0, p0, Landroid/content/pm/PackageItemInfo;->logo:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 471
    iget-object v0, p0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 472
    iget v0, p0, Landroid/content/pm/PackageItemInfo;->banner:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 473
    iget v0, p0, Landroid/content/pm/PackageItemInfo;->showUserIcon:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 474
    return-void
.end method
