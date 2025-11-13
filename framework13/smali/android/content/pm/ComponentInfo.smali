.class public Landroid/content/pm/ComponentInfo;
.super Landroid/content/pm/PackageItemInfo;
.source "ComponentInfo.java"


# instance fields
.field public whitelist applicationInfo:Landroid/content/pm/ApplicationInfo;

.field public whitelist attributionTags:[Ljava/lang/String;

.field public whitelist descriptionRes:I

.field public whitelist directBootAware:Z

.field public whitelist enabled:Z

.field public whitelist exported:Z

.field public whitelist processName:Ljava/lang/String;

.field public whitelist splitName:Ljava/lang/String;


# direct methods
.method public constructor whitelist <init>()V
    .locals 1

    .line 120
    invoke-direct {p0}, Landroid/content/pm/PackageItemInfo;-><init>()V

    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/pm/ComponentInfo;->enabled:Z

    .line 111
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/pm/ComponentInfo;->exported:Z

    .line 118
    iput-boolean v0, p0, Landroid/content/pm/ComponentInfo;->directBootAware:Z

    .line 121
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/pm/ComponentInfo;)V
    .locals 1
    .param p1, "orig"    # Landroid/content/pm/ComponentInfo;

    .line 124
    invoke-direct {p0, p1}, Landroid/content/pm/PackageItemInfo;-><init>(Landroid/content/pm/PackageItemInfo;)V

    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/pm/ComponentInfo;->enabled:Z

    .line 111
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/pm/ComponentInfo;->exported:Z

    .line 118
    iput-boolean v0, p0, Landroid/content/pm/ComponentInfo;->directBootAware:Z

    .line 125
    iget-object v0, p1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v0, p0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 126
    iget-object v0, p1, Landroid/content/pm/ComponentInfo;->processName:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ComponentInfo;->processName:Ljava/lang/String;

    .line 127
    iget-object v0, p1, Landroid/content/pm/ComponentInfo;->splitName:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ComponentInfo;->splitName:Ljava/lang/String;

    .line 128
    iget-object v0, p1, Landroid/content/pm/ComponentInfo;->attributionTags:[Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ComponentInfo;->attributionTags:[Ljava/lang/String;

    .line 129
    iget v0, p1, Landroid/content/pm/ComponentInfo;->descriptionRes:I

    iput v0, p0, Landroid/content/pm/ComponentInfo;->descriptionRes:I

    .line 130
    iget-boolean v0, p1, Landroid/content/pm/ComponentInfo;->enabled:Z

    iput-boolean v0, p0, Landroid/content/pm/ComponentInfo;->enabled:Z

    .line 131
    iget-boolean v0, p1, Landroid/content/pm/ComponentInfo;->exported:Z

    iput-boolean v0, p0, Landroid/content/pm/ComponentInfo;->exported:Z

    .line 132
    iget-boolean v0, p1, Landroid/content/pm/ComponentInfo;->directBootAware:Z

    iput-boolean v0, p0, Landroid/content/pm/ComponentInfo;->directBootAware:Z

    .line 133
    return-void
.end method

.method protected constructor whitelist <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 295
    invoke-direct {p0, p1}, Landroid/content/pm/PackageItemInfo;-><init>(Landroid/os/Parcel;)V

    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/pm/ComponentInfo;->enabled:Z

    .line 111
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/content/pm/ComponentInfo;->exported:Z

    .line 118
    iput-boolean v1, p0, Landroid/content/pm/ComponentInfo;->directBootAware:Z

    .line 296
    sget-object v2, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    iput-object v2, p0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 297
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/ComponentInfo;->processName:Ljava/lang/String;

    .line 298
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/ComponentInfo;->splitName:Ljava/lang/String;

    .line 299
    invoke-virtual {p1}, Landroid/os/Parcel;->createString8Array()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/ComponentInfo;->attributionTags:[Ljava/lang/String;

    .line 300
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/content/pm/ComponentInfo;->descriptionRes:I

    .line 301
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iput-boolean v2, p0, Landroid/content/pm/ComponentInfo;->enabled:Z

    .line 302
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    iput-boolean v2, p0, Landroid/content/pm/ComponentInfo;->exported:Z

    .line 303
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    iput-boolean v0, p0, Landroid/content/pm/ComponentInfo;->directBootAware:Z

    .line 304
    return-void
.end method


# virtual methods
.method protected whitelist dumpBack(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 1
    .param p1, "pw"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 267
    const/4 v0, 0x3

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/pm/ComponentInfo;->dumpBack(Landroid/util/Printer;Ljava/lang/String;I)V

    .line 268
    return-void
.end method

.method greylist-max-o dumpBack(Landroid/util/Printer;Ljava/lang/String;I)V
    .locals 3
    .param p1, "pw"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "dumpFlags"    # I

    .line 271
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_1

    .line 272
    iget-object v0, p0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_0

    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ApplicationInfo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 274
    iget-object v0, p0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p3}, Landroid/content/pm/ApplicationInfo;->dump(Landroid/util/Printer;Ljava/lang/String;I)V

    goto :goto_0

    .line 276
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ApplicationInfo: null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 279
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/content/pm/PackageItemInfo;->dumpBack(Landroid/util/Printer;Ljava/lang/String;)V

    .line 280
    return-void
.end method

.method protected whitelist dumpFront(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 3
    .param p1, "pw"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 243
    invoke-super {p0, p1, p2}, Landroid/content/pm/PackageItemInfo;->dumpFront(Landroid/util/Printer;Ljava/lang/String;)V

    .line 244
    iget-object v0, p0, Landroid/content/pm/ComponentInfo;->processName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    iget-object v1, p0, Landroid/content/pm/ComponentInfo;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "processName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/pm/ComponentInfo;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 247
    :cond_0
    iget-object v0, p0, Landroid/content/pm/ComponentInfo;->splitName:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "splitName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/pm/ComponentInfo;->splitName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 250
    :cond_1
    iget-object v0, p0, Landroid/content/pm/ComponentInfo;->attributionTags:[Ljava/lang/String;

    if-eqz v0, :cond_3

    array-length v0, v0

    if-lez v0, :cond_3

    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 252
    .local v0, "tags":Ljava/lang/StringBuilder;
    iget-object v1, p0, Landroid/content/pm/ComponentInfo;->attributionTags:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/content/pm/ComponentInfo;->attributionTags:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 254
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    iget-object v2, p0, Landroid/content/pm/ComponentInfo;->attributionTags:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 257
    .end local v1    # "i":I
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "attributionTags=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 259
    .end local v0    # "tags":Ljava/lang/StringBuilder;
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/content/pm/ComponentInfo;->enabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " exported="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/content/pm/ComponentInfo;->exported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " directBootAware="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/content/pm/ComponentInfo;->directBootAware:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 261
    iget v0, p0, Landroid/content/pm/ComponentInfo;->descriptionRes:I

    if-eqz v0, :cond_4

    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/content/pm/ComponentInfo;->descriptionRes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 264
    :cond_4
    return-void
.end method

.method protected greylist-max-o getApplicationInfo()Landroid/content/pm/ApplicationInfo;
    .locals 1

    .line 333
    iget-object v0, p0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    return-object v0
.end method

.method public final whitelist getBannerResource()I
    .locals 1

    .line 233
    iget v0, p0, Landroid/content/pm/ComponentInfo;->banner:I

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/content/pm/ComponentInfo;->banner:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->banner:I

    :goto_0
    return v0
.end method

.method public greylist-max-r getComponentName()Landroid/content/ComponentName;
    .locals 3

    .line 239
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final whitelist getIconResource()I
    .locals 1

    .line 211
    iget v0, p0, Landroid/content/pm/ComponentInfo;->icon:I

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/content/pm/ComponentInfo;->icon:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    :goto_0
    return v0
.end method

.method public final whitelist getLogoResource()I
    .locals 1

    .line 222
    iget v0, p0, Landroid/content/pm/ComponentInfo;->logo:I

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/content/pm/ComponentInfo;->logo:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->logo:I

    :goto_0
    return v0
.end method

.method public whitelist isEnabled()Z
    .locals 1

    .line 200
    iget-boolean v0, p0, Landroid/content/pm/ComponentInfo;->enabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected greylist-max-o loadDefaultBanner(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .line 318
    iget-object v0, p0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, p1}, Landroid/content/pm/ApplicationInfo;->loadBanner(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o loadDefaultIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .line 311
    iget-object v0, p0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, p1}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected greylist-max-o loadDefaultLogo(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .line 326
    iget-object v0, p0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, p1}, Landroid/content/pm/ApplicationInfo;->loadLogo(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o loadUnsafeLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    .locals 10
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .line 139
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getApplicationPolicy()Landroid/sec/enterprise/ApplicationPolicy;

    move-result-object v0

    .line 140
    .local v0, "appPolicy":Landroid/sec/enterprise/ApplicationPolicy;
    const/4 v1, 0x0

    .line 142
    .local v1, "newName":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-virtual {v0, v2, v4}, Landroid/sec/enterprise/ApplicationPolicy;->getApplicationNameFromDb(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 143
    if-nez v1, :cond_0

    .line 144
    iget-object v2, p0, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    iget-object v4, p0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-virtual {v0, v2, v4}, Landroid/sec/enterprise/ApplicationPolicy;->getApplicationNameFromDb(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 146
    :cond_0
    if-eqz v1, :cond_2

    .line 148
    new-instance v2, Landroid/content/Intent;

    const/4 v4, 0x0

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v2, v5, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 149
    .local v2, "launchIntent":Landroid/content/Intent;
    const-string v4, "android.intent.category.LAUNCHER"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 150
    const/4 v4, 0x0

    iget-object v5, p0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    invoke-virtual {p1, v2, v4, v5}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v4

    .line 151
    .local v4, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 153
    .local v3, "currentActivity":Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "i":I
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    .local v6, "size":I
    :goto_0
    if-ge v5, v6, :cond_2

    .line 154
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 155
    .local v7, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v8, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v8}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v8

    .line 156
    .local v8, "launcherActivity":Ljava/lang/String;
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 157
    return-object v1

    .line 153
    .end local v7    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v8    # "launcherActivity":Ljava/lang/String;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 165
    .end local v0    # "appPolicy":Landroid/sec/enterprise/ApplicationPolicy;
    .end local v1    # "newName":Ljava/lang/String;
    .end local v2    # "launchIntent":Landroid/content/Intent;
    .end local v3    # "currentActivity":Ljava/lang/String;
    .end local v4    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v5    # "i":I
    .end local v6    # "size":I
    :cond_2
    iget-object v0, p0, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    iget-object v1, p0, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxIcon(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 166
    iget-object v0, p0, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    iget-object v1, p0, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    iget-object v2, p0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/SemPersonaManager;->getContainerName(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 167
    .local v0, "label":Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 168
    return-object v0

    .line 173
    .end local v0    # "label":Ljava/lang/String;
    :cond_3
    iget-object v0, p0, Landroid/content/pm/ComponentInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-eqz v0, :cond_4

    .line 174
    iget-object v0, p0, Landroid/content/pm/ComponentInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    return-object v0

    .line 176
    :cond_4
    iget-object v0, p0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 178
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget v1, p0, Landroid/content/pm/ComponentInfo;->labelRes:I

    if-eqz v1, :cond_5

    .line 179
    iget-object v1, p0, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    iget v2, p0, Landroid/content/pm/ComponentInfo;->labelRes:I

    invoke-virtual {p1, v1, v2, v0}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 180
    .local v1, "label":Ljava/lang/CharSequence;
    if-eqz v1, :cond_5

    .line 181
    return-object v1

    .line 184
    .end local v1    # "label":Ljava/lang/CharSequence;
    :cond_5
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-eqz v1, :cond_6

    .line 185
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    return-object v1

    .line 187
    :cond_6
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->labelRes:I

    if-eqz v1, :cond_7

    .line 188
    iget-object v1, p0, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    iget v2, v0, Landroid/content/pm/ApplicationInfo;->labelRes:I

    invoke-virtual {p1, v1, v2, v0}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 189
    .restart local v1    # "label":Ljava/lang/CharSequence;
    if-eqz v1, :cond_7

    .line 190
    return-object v1

    .line 193
    .end local v1    # "label":Ljava/lang/CharSequence;
    :cond_7
    iget-object v1, p0, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "parcelableFlags"    # I

    .line 283
    invoke-super {p0, p1, p2}, Landroid/content/pm/PackageItemInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 284
    iget-object v0, p0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/ApplicationInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 285
    iget-object v0, p0, Landroid/content/pm/ComponentInfo;->processName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 286
    iget-object v0, p0, Landroid/content/pm/ComponentInfo;->splitName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 287
    iget-object v0, p0, Landroid/content/pm/ComponentInfo;->attributionTags:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8Array([Ljava/lang/String;)V

    .line 288
    iget v0, p0, Landroid/content/pm/ComponentInfo;->descriptionRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 289
    iget-boolean v0, p0, Landroid/content/pm/ComponentInfo;->enabled:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 290
    iget-boolean v0, p0, Landroid/content/pm/ComponentInfo;->exported:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 291
    iget-boolean v0, p0, Landroid/content/pm/ComponentInfo;->directBootAware:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 292
    return-void
.end method
