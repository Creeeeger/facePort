.class public Lcom/samsung/android/game/SemPackageConfiguration;
.super Ljava/lang/Object;
.source "SemPackageConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CATEGORY_GAME_NORMAL:I = 0x1

.field public static final whitelist CATEGORY_NON_GAME_INTERNAL:I = 0x3

.field public static final whitelist CATEGORY_NON_GAME_MANAGED:I = 0xa

.field public static final whitelist CATEGORY_NON_GAME_NORMAL:I = 0x0

.field public static final blacklist CATEGORY_NON_GAME_TUNABLE:I = 0x2

.field public static final whitelist CATEGORY_UNDEFINED:I = -0x1

.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/game/SemPackageConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "SemPackageConfiguration"


# instance fields
.field private blacklist category:I

.field private blacklist categoryByUser:I

.field private blacklist dynamicSurfaceScaling:F

.field private blacklist fillBlackSurfaceOnMargins:Z

.field private blacklist optimalAspectRatio:F

.field private blacklist packageName:Ljava/lang/String;

.field private blacklist performancePolicyForSsrm:Ljava/lang/String;

.field private blacklist userId:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 294
    new-instance v0, Lcom/samsung/android/game/SemPackageConfiguration$1;

    invoke-direct {v0}, Lcom/samsung/android/game/SemPackageConfiguration$1;-><init>()V

    sput-object v0, Lcom/samsung/android/game/SemPackageConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/game/SemPackageConfiguration;->performancePolicyForSsrm:Ljava/lang/String;

    .line 26
    const v1, 0x3fe38e39

    iput v1, p0, Lcom/samsung/android/game/SemPackageConfiguration;->optimalAspectRatio:F

    .line 30
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/samsung/android/game/SemPackageConfiguration;->dynamicSurfaceScaling:F

    .line 34
    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/game/SemPackageConfiguration;->category:I

    .line 38
    iput v1, p0, Lcom/samsung/android/game/SemPackageConfiguration;->categoryByUser:I

    .line 42
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/game/SemPackageConfiguration;->fillBlackSurfaceOnMargins:Z

    .line 47
    iput-object v0, p0, Lcom/samsung/android/game/SemPackageConfiguration;->userId:Ljava/lang/String;

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/game/SemPackageConfiguration;->packageName:Ljava/lang/String;

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/game/SemPackageConfiguration;->performancePolicyForSsrm:Ljava/lang/String;

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/game/SemPackageConfiguration;->optimalAspectRatio:F

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/game/SemPackageConfiguration;->dynamicSurfaceScaling:F

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/game/SemPackageConfiguration;->category:I

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/game/SemPackageConfiguration;->categoryByUser:I

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/game/SemPackageConfiguration;->fillBlackSurfaceOnMargins:Z

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/game/SemPackageConfiguration;->userId:Ljava/lang/String;

    .line 111
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Lcom/samsung/android/game/SemPackageConfiguration-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/game/SemPackageConfiguration;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/game/SemPackageConfiguration;->performancePolicyForSsrm:Ljava/lang/String;

    .line 26
    const v1, 0x3fe38e39

    iput v1, p0, Lcom/samsung/android/game/SemPackageConfiguration;->optimalAspectRatio:F

    .line 30
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/samsung/android/game/SemPackageConfiguration;->dynamicSurfaceScaling:F

    .line 34
    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/game/SemPackageConfiguration;->category:I

    .line 38
    iput v1, p0, Lcom/samsung/android/game/SemPackageConfiguration;->categoryByUser:I

    .line 42
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/game/SemPackageConfiguration;->fillBlackSurfaceOnMargins:Z

    .line 47
    iput-object v0, p0, Lcom/samsung/android/game/SemPackageConfiguration;->userId:Ljava/lang/String;

    .line 96
    iput-object p1, p0, Lcom/samsung/android/game/SemPackageConfiguration;->packageName:Ljava/lang/String;

    .line 97
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 310
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist fillBlackSurfaceOnMargins(Z)V
    .locals 0
    .param p1, "fillBlackSurfaceOnMargins"    # Z

    .line 271
    iput-boolean p1, p0, Lcom/samsung/android/game/SemPackageConfiguration;->fillBlackSurfaceOnMargins:Z

    .line 272
    return-void
.end method

.method public blacklist getCategory()I
    .locals 1

    .line 191
    iget v0, p0, Lcom/samsung/android/game/SemPackageConfiguration;->category:I

    return v0
.end method

.method public blacklist getCategoryByUser()I
    .locals 1

    .line 216
    iget v0, p0, Lcom/samsung/android/game/SemPackageConfiguration;->categoryByUser:I

    return v0
.end method

.method public blacklist getDynamicSurfaceScaling()F
    .locals 1

    .line 170
    iget v0, p0, Lcom/samsung/android/game/SemPackageConfiguration;->dynamicSurfaceScaling:F

    return v0
.end method

.method public blacklist getOptimalAspectRatio()F
    .locals 1

    .line 148
    iget v0, p0, Lcom/samsung/android/game/SemPackageConfiguration;->optimalAspectRatio:F

    return v0
.end method

.method public blacklist getPackageName()Ljava/lang/String;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/samsung/android/game/SemPackageConfiguration;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getPerformancePolicyForSsrm()Ljava/lang/String;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/samsung/android/game/SemPackageConfiguration;->performancePolicyForSsrm:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getUserId()Ljava/lang/String;
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/samsung/android/game/SemPackageConfiguration;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist setCategory(I)V
    .locals 2
    .param p1, "category"    # I

    .line 205
    const/4 v0, -0x1

    if-lt p1, v0, :cond_1

    const/16 v0, 0xa

    if-ge v0, p1, :cond_0

    goto :goto_0

    .line 209
    :cond_0
    iput p1, p0, Lcom/samsung/android/game/SemPackageConfiguration;->category:I

    .line 210
    return-void

    .line 206
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setCategory(), invalid category: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemPackageConfiguration"

    invoke-static {v1, v0}, Lcom/samsung/android/game/GmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    return-void
.end method

.method public whitelist setCategoryByUser(I)V
    .locals 2
    .param p1, "category"    # I

    .line 230
    const/4 v0, -0x1

    if-lt p1, v0, :cond_1

    const/16 v0, 0xa

    if-ge v0, p1, :cond_0

    goto :goto_0

    .line 234
    :cond_0
    iput p1, p0, Lcom/samsung/android/game/SemPackageConfiguration;->categoryByUser:I

    .line 235
    return-void

    .line 231
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setCategoryByUser(), invalid category: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemPackageConfiguration"

    invoke-static {v1, v0}, Lcom/samsung/android/game/GmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    return-void
.end method

.method public whitelist setDynamicSurfaceScaling(F)V
    .locals 2
    .param p1, "dynamicSurfaceScaling"    # F

    .line 180
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, v0, p1

    if-gez v0, :cond_0

    goto :goto_0

    .line 184
    :cond_0
    iput p1, p0, Lcom/samsung/android/game/SemPackageConfiguration;->dynamicSurfaceScaling:F

    .line 185
    return-void

    .line 181
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setDynamicSurfaceScaling(), invalid dynamicSurfaceScaling: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemPackageConfiguration"

    invoke-static {v1, v0}, Lcom/samsung/android/game/GmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    return-void
.end method

.method public blacklist setOptimalAspectRatio(F)V
    .locals 2
    .param p1, "optimalAspectRatio"    # F

    .line 159
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_1

    const/high16 v0, 0x40a00000    # 5.0f

    cmpg-float v0, v0, p1

    if-gez v0, :cond_0

    goto :goto_0

    .line 163
    :cond_0
    iput p1, p0, Lcom/samsung/android/game/SemPackageConfiguration;->optimalAspectRatio:F

    .line 164
    return-void

    .line 160
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setOptimalAspectRatio(), invalid optimalAspectRatio: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemPackageConfiguration"

    invoke-static {v1, v0}, Lcom/samsung/android/game/GmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    return-void
.end method

.method public whitelist setPerformancePolicyForSsrm(Ljava/lang/String;)V
    .locals 2
    .param p1, "policy"    # Ljava/lang/String;

    .line 134
    if-eqz p1, :cond_1

    .line 135
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 136
    const-string/jumbo v0, "{"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "}"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 137
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setPerformancePolicyForSsrm(), invalid policy: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemPackageConfiguration"

    invoke-static {v1, v0}, Lcom/samsung/android/game/GmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    return-void

    .line 141
    :cond_1
    iput-object p1, p0, Lcom/samsung/android/game/SemPackageConfiguration;->performancePolicyForSsrm:Ljava/lang/String;

    .line 142
    return-void
.end method

.method public blacklist setUserId(Ljava/lang/String;)V
    .locals 0
    .param p1, "userId"    # Ljava/lang/String;

    .line 253
    iput-object p1, p0, Lcom/samsung/android/game/SemPackageConfiguration;->userId:Ljava/lang/String;

    .line 254
    return-void
.end method

.method public blacklist shouldFillBlackSurfaceOnMargins()Z
    .locals 1

    .line 260
    iget-boolean v0, p0, Lcom/samsung/android/game/SemPackageConfiguration;->fillBlackSurfaceOnMargins:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 280
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "packageName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/game/SemPackageConfiguration;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    const-string v1, ", performancePolicyForSsrm: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/game/SemPackageConfiguration;->getPerformancePolicyForSsrm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    const-string v1, ", optimalAspectRatio: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/game/SemPackageConfiguration;->getOptimalAspectRatio()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 283
    const-string v1, ", dynamicSurfaceScaling: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/game/SemPackageConfiguration;->getDynamicSurfaceScaling()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 284
    const-string v1, ", category: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/game/SemPackageConfiguration;->getCategory()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 285
    const-string v1, ", categoryByUser: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/game/SemPackageConfiguration;->getCategoryByUser()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 286
    const-string v1, ", fillBlackSurfaceOnMargins: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/game/SemPackageConfiguration;->shouldFillBlackSurfaceOnMargins()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 287
    const-string v1, ", userId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/game/SemPackageConfiguration;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 318
    iget-object v0, p0, Lcom/samsung/android/game/SemPackageConfiguration;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 319
    iget-object v0, p0, Lcom/samsung/android/game/SemPackageConfiguration;->performancePolicyForSsrm:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 320
    iget v0, p0, Lcom/samsung/android/game/SemPackageConfiguration;->optimalAspectRatio:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 321
    iget v0, p0, Lcom/samsung/android/game/SemPackageConfiguration;->dynamicSurfaceScaling:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 322
    iget v0, p0, Lcom/samsung/android/game/SemPackageConfiguration;->category:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 323
    iget v0, p0, Lcom/samsung/android/game/SemPackageConfiguration;->categoryByUser:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 324
    iget-boolean v0, p0, Lcom/samsung/android/game/SemPackageConfiguration;->fillBlackSurfaceOnMargins:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 325
    iget-object v0, p0, Lcom/samsung/android/game/SemPackageConfiguration;->userId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 326
    return-void
.end method
