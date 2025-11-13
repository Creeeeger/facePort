.class public final Lcom/samsung/android/app/SemExecutableInfo;
.super Ljava/lang/Object;
.source "SemExecutableInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field private static final blacklist CLASSNAME_PREFIX_FOR_SEC_PRODUCT_FEATURE:Ljava/lang/String; = "SecProductFeature_"

.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/app/SemExecutableInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist CSC_FEATURE_PREFIX:Ljava/lang/String; = "CscFeature_"

.field private static final blacklist DEBUG:Z

.field public static final whitelist LAUNCH_TYPE_ACTIVITY:I = 0x0

.field public static final whitelist LAUNCH_TYPE_ACTIVITY_FOR_RESULT:I = 0x3

.field public static final whitelist LAUNCH_TYPE_BROADCAST:I = 0x2

.field public static final whitelist LAUNCH_TYPE_SERVICE:I = 0x1

.field private static final blacklist LOG_TAG:Ljava/lang/String; = "SemExecutableInfo"

.field private static final blacklist MD_LABEL_EXECUTABLE:Ljava/lang/String; = "com.samsung.android.support.executable"

.field private static final blacklist ORDER_INIT_VALUE:I = -0x270c

.field private static final blacklist ORDER_INVALID_FORMAT:I = -0x270e

.field private static final blacklist ORDER_NOT_ALLOWED:I = -0x270d

.field private static final blacklist ORDER_OUT_OF_RANGE:I = -0x270f

.field private static final blacklist PACKAGE_PREFIX_FOR_SEC_PRODUCT_FEATURE:Ljava/lang/String; = "com.sec.android.app."

.field private static final blacklist SEC_FLOATING_FEATURE_PREFIX:Ljava/lang/String; = "SEC_FLOATING_FEATURE_"

.field private static final blacklist SEC_PRODUCT_FEATURE_PREFIX:Ljava/lang/String; = "SEC_PRODUCT_FEATURE_"

.field private static final blacklist XML_ELEMENT_COMMAND:Ljava/lang/String; = "command"

.field private static final blacklist XML_ELEMENT_ENABLED:Ljava/lang/String; = "enabled"

.field private static final blacklist XML_ELEMENT_EXECUTABLE:Ljava/lang/String; = "executable"

.field private static final blacklist XML_ELEMENT_EXTRA_ATTR:Ljava/lang/String; = "extras-attr"

.field private static final blacklist XML_ELEMENT_EXTRA_ATTR_CATEGORY:Ljava/lang/String; = "category"

.field private static final blacklist XML_ELEMENT_EXTRA_ATTR_COMPONENTNAME:Ljava/lang/String; = "componentName"

.field private static final blacklist XML_ELEMENT_EXTRA_ATTR_EXTRAS:Ljava/lang/String; = "extras"

.field private static final blacklist XML_ELEMENT_EXTRA_ATTR_FEATURE:Ljava/lang/String; = "feature"

.field private static final blacklist XML_ELEMENT_EXTRA_ATTR_INTETNACTION:Ljava/lang/String; = "action"

.field private static final blacklist XML_ELEMENT_EXTRA_ATTR_LAUCHMODE:Ljava/lang/String; = "launchMode"

.field private static final blacklist XML_ELEMENT_EXTRA_ATTR_PACKAGENAME:Ljava/lang/String; = "packageName"

.field private static final blacklist XML_ELEMENT_EXTRA_ATTR_TYPE:Ljava/lang/String; = "type"

.field private static final blacklist XML_ELEMENT_EXTRA_ATTR_TYPE_ACTIVITY:Ljava/lang/String; = "activity"

.field private static final blacklist XML_ELEMENT_EXTRA_ATTR_TYPE_ACTIVITY_FOR_RESULT:Ljava/lang/String; = "activityForResult"

.field private static final blacklist XML_ELEMENT_EXTRA_ATTR_TYPE_BROADCAST:Ljava/lang/String; = "broadcast"

.field private static final blacklist XML_ELEMENT_EXTRA_ATTR_TYPE_SERVICE:Ljava/lang/String; = "service"

.field private static final blacklist XML_ELEMENT_ICON:Ljava/lang/String; = "icon"

.field private static final blacklist XML_ELEMENT_LABEL:Ljava/lang/String; = "label"

.field private static final blacklist XML_ELEMENT_LAUCHMODE_CLEARTOP:Ljava/lang/String; = "clearTop"

.field private static final blacklist XML_ELEMENT_LAUCHMODE_NEWTASK:Ljava/lang/String; = "newTask"

.field private static final blacklist XML_ELEMENT_LAUCHMODE_SINGLETOP:Ljava/lang/String; = "singleTop"

.field private static final blacklist XML_ELEMENT_SMALL_ICON:Ljava/lang/String; = "smallIcon"


# instance fields
.field blacklist mAction:Ljava/lang/String;

.field blacklist mActivityLaunchMode:Ljava/lang/String;

.field blacklist mBundle:Landroid/os/Bundle;

.field blacklist mCategory:Ljava/lang/String;

.field blacklist mComponentName:Ljava/lang/String;

.field blacklist mEnabled:Z

.field blacklist mFeatureNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mFeatureValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mIconId:I

.field blacklist mLabelId:I

.field blacklist mLaunchType:I

.field blacklist mPackageName:Ljava/lang/String;

.field blacklist mSmallIconId:I

.field blacklist mUid:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/app/SemExecutableInfo;->DEBUG:Z

    new-instance v0, Lcom/samsung/android/app/SemExecutableInfo$1;

    invoke-direct {v0}, Lcom/samsung/android/app/SemExecutableInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/SemExecutableInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mUid:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mEnabled:Z

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mBundle:Landroid/os/Bundle;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mFeatureNames:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mFeatureValues:Ljava/util/List;

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/app/SemExecutableInfo;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mUid:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mEnabled:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mLabelId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mIconId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mSmallIconId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mLaunchType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mCategory:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mAction:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mPackageName:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mFeatureNames:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mFeatureValues:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mBundle:Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mComponentName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mActivityLaunchMode:Ljava/lang/String;

    return-void
.end method

.method private blacklist addExtraAttribute(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    sget-object v0, Lcom/android/internal/R$styleable;->extrasCommand:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "launchMode"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    iput-object v6, p0, Lcom/samsung/android/app/SemExecutableInfo;->mActivityLaunchMode:Ljava/lang/String;

    goto/16 :goto_0

    :cond_0
    const-string/jumbo v7, "type"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    const-string v7, "activity"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    iput v1, p0, Lcom/samsung/android/app/SemExecutableInfo;->mLaunchType:I

    goto/16 :goto_0

    :cond_1
    const-string/jumbo v7, "service"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    iput v5, p0, Lcom/samsung/android/app/SemExecutableInfo;->mLaunchType:I

    goto/16 :goto_0

    :cond_2
    const-string v5, "broadcast"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    iput v3, p0, Lcom/samsung/android/app/SemExecutableInfo;->mLaunchType:I

    goto/16 :goto_0

    :cond_3
    const-string v3, "activityForResult"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v1, 0x3

    iput v1, p0, Lcom/samsung/android/app/SemExecutableInfo;->mLaunchType:I

    goto :goto_0

    :cond_4
    iput v1, p0, Lcom/samsung/android/app/SemExecutableInfo;->mLaunchType:I

    goto :goto_0

    :cond_5
    const-string v1, "category"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iput-object v6, p0, Lcom/samsung/android/app/SemExecutableInfo;->mCategory:Ljava/lang/String;

    goto :goto_0

    :cond_6
    const-string v1, "action"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iput-object v6, p0, Lcom/samsung/android/app/SemExecutableInfo;->mAction:Ljava/lang/String;

    goto :goto_0

    :cond_7
    const-string/jumbo v1, "packageName"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iput-object v6, p0, Lcom/samsung/android/app/SemExecutableInfo;->mPackageName:Ljava/lang/String;

    goto :goto_0

    :cond_8
    const-string v1, "componentName"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    iput-object v6, p0, Lcom/samsung/android/app/SemExecutableInfo;->mComponentName:Ljava/lang/String;

    goto :goto_0

    :cond_9
    const-string/jumbo v1, "feature"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/samsung/android/app/SemExecutableInfo;->mFeatureNames:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/samsung/android/app/SemExecutableInfo;->mFeatureValues:Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_a
    const-string v1, "extras"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    iget-object v1, p0, Lcom/samsung/android/app/SemExecutableInfo;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v1, v4, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    :goto_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private static blacklist checkValidate(Lcom/samsung/android/app/SemExecutableInfo;)Z
    .locals 10

    const-string v0, "SemExecutableInfo"

    const/4 v1, 0x0

    if-nez p0, :cond_1

    sget-boolean v2, Lcom/samsung/android/app/SemExecutableInfo;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "Invalid SemExecutableInfo"

    invoke-static {v0, v2}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v1

    :cond_1
    iget-boolean v2, p0, Lcom/samsung/android/app/SemExecutableInfo;->mEnabled:Z

    if-nez v2, :cond_3

    sget-boolean v2, Lcom/samsung/android/app/SemExecutableInfo;->DEBUG:Z

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disabled SemExecutableInfo "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/app/SemExecutableInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v1

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/app/SemExecutableInfo;->getLaunchType()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_6

    invoke-virtual {p0}, Lcom/samsung/android/app/SemExecutableInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/app/SemExecutableInfo;->getComponentName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_6

    :cond_4
    sget-boolean v2, Lcom/samsung/android/app/SemExecutableInfo;->DEBUG:Z

    if-eqz v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid packageName or componentName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/app/SemExecutableInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return v1

    :cond_6
    invoke-virtual {p0}, Lcom/samsung/android/app/SemExecutableInfo;->getLabelId()I

    move-result v2

    if-eqz v2, :cond_1d

    invoke-virtual {p0}, Lcom/samsung/android/app/SemExecutableInfo;->getIconId()I

    move-result v2

    if-nez v2, :cond_7

    goto/16 :goto_5

    :cond_7
    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/app/SemExecutableInfo;->mFeatureNames:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v2, v3, :cond_1c

    iget-object v3, p0, Lcom/samsung/android/app/SemExecutableInfo;->mFeatureNames:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v5, p0, Lcom/samsung/android/app/SemExecutableInfo;->mFeatureValues:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v3, :cond_17

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_17

    if-eqz v5, :cond_17

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_17

    const-string v6, "CscFeature_"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    const-string v7, "] "

    const-string v8, " is not ["

    const-string v9, "!"

    if-eqz v6, :cond_c

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-virtual {v5, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    return v1

    :cond_8
    goto :goto_1

    :cond_9
    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_b

    sget-boolean v4, Lcom/samsung/android/app/SemExecutableInfo;->DEBUG:Z

    if-eqz v4, :cond_a

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/samsung/android/app/SemExecutableInfo;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    return v1

    :cond_b
    :goto_1
    nop

    goto/16 :goto_4

    :cond_c
    const-string v6, "SEC_FLOATING_FEATURE_"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_11

    const-string v6, ""

    invoke-virtual {v5, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_e

    invoke-virtual {v5, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_d

    return v1

    :cond_d
    goto :goto_2

    :cond_e
    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_10

    sget-boolean v4, Lcom/samsung/android/app/SemExecutableInfo;->DEBUG:Z

    if-eqz v4, :cond_f

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/samsung/android/app/SemExecutableInfo;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    return v1

    :cond_10
    :goto_2
    nop

    goto/16 :goto_4

    :cond_11
    const-string v6, "SEC_PRODUCT_FEATURE_"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_12

    return v1

    :cond_12
    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_14

    invoke-virtual {v5, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_13

    return v1

    :cond_13
    goto :goto_3

    :cond_14
    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_16

    sget-boolean v4, Lcom/samsung/android/app/SemExecutableInfo;->DEBUG:Z

    if-eqz v4, :cond_15

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/samsung/android/app/SemExecutableInfo;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    return v1

    :cond_16
    :goto_3
    nop

    goto :goto_4

    :cond_17
    const-string v4, " "

    if-eqz v3, :cond_19

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_19

    sget-boolean v6, Lcom/samsung/android/app/SemExecutableInfo;->DEBUG:Z

    if-eqz v6, :cond_18

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No value for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/samsung/android/app/SemExecutableInfo;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    return v1

    :cond_19
    if-eqz v5, :cond_1b

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1b

    sget-boolean v6, Lcom/samsung/android/app/SemExecutableInfo;->DEBUG:Z

    if-eqz v6, :cond_1a

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No feature name is provided for the value "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/samsung/android/app/SemExecutableInfo;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    return v1

    :cond_1b
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_1c
    return v4

    :cond_1d
    :goto_5
    sget-boolean v2, Lcom/samsung/android/app/SemExecutableInfo;->DEBUG:Z

    if-eqz v2, :cond_1e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid label or icon = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/app/SemExecutableInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    return v1
.end method

.method private static blacklist createActivityContext(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/content/Context;
    .locals 5

    const-string v0, "SemExecutableInfo"

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t make context for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_1
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package not found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :goto_1
    return-object v1
.end method

.method private static blacklist examineOrderInCategory(Lcom/samsung/android/app/SemExecutableInfo;Z)V
    .locals 17

    move-object/from16 v1, p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v0

    const-string v3, ""

    const/16 v0, -0x270c

    if-nez p1, :cond_0

    const/16 v0, -0x270d

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/SemExecutableInfo;->getCategories()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_b

    iget-object v4, v1, Lcom/samsung/android/app/SemExecutableInfo;->mCategory:Ljava/lang/String;

    const-string v5, "\\|"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    move v7, v0

    move v8, v6

    :goto_0
    if-ge v8, v5, :cond_a

    aget-object v10, v4, v8

    const-string v0, "@"

    invoke-virtual {v10, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    array-length v12, v11

    const-string v13, "SemExecutableInfo"

    const-string/jumbo v14, "|"

    packed-switch v12, :pswitch_data_0

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/samsung/android/app/SemExecutableInfo;->DEBUG:Z

    if-eqz v0, :cond_9

    const-string v0, "Invalid category format for category order"

    invoke-static {v13, v0}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    :pswitch_0
    const/16 v9, -0x270f

    const/16 v15, -0x270d

    if-eq v7, v15, :cond_7

    :try_start_0
    aget-object v0, v11, v6

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v7, v0

    const/16 v0, -0x3e8

    if-lt v7, v0, :cond_1

    const/16 v0, 0x3e8

    if-le v7, v0, :cond_7

    :cond_1
    const/16 v7, -0x270f

    goto :goto_6

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    const/16 v7, -0x270e

    :try_start_1
    sget-boolean v16, Lcom/samsung/android/app/SemExecutableInfo;->DEBUG:Z

    if-eqz v16, :cond_2

    const-string v6, "Invalid order"

    invoke-static {v13, v6}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    if-eq v7, v9, :cond_4

    if-eq v7, v15, :cond_4

    const/16 v6, -0x270e

    if-ne v7, v6, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    :cond_4
    :goto_1
    const/4 v6, 0x1

    aget-object v0, v11, v6

    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    :goto_3
    if-eq v7, v9, :cond_6

    if-eq v7, v15, :cond_6

    const/16 v5, -0x270e

    if-ne v7, v5, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_6
    :goto_4
    const/4 v5, 0x1

    aget-object v5, v11, v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_5
    throw v0

    :cond_7
    :goto_6
    if-eq v7, v9, :cond_8

    if-eq v7, v15, :cond_8

    const/16 v6, -0x270e

    if-ne v7, v6, :cond_3

    :cond_8
    const/4 v6, 0x1

    aget-object v0, v11, v6

    goto :goto_2

    :goto_7
    goto :goto_8

    :pswitch_1
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    nop

    :cond_9
    :goto_8
    add-int/lit8 v8, v8, 0x1

    const/4 v6, 0x0

    goto/16 :goto_0

    :cond_a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v5, 0x1

    sub-int/2addr v0, v5

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/samsung/android/app/SemExecutableInfo;->mCategory:Ljava/lang/String;

    move v0, v7

    :cond_b
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static blacklist getActivityMetaData(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/content/ComponentName;)Lcom/samsung/android/app/SemExecutableInfo;
    .locals 6

    new-instance v0, Lcom/samsung/android/app/SemExecutableInfo;

    invoke-direct {v0}, Lcom/samsung/android/app/SemExecutableInfo;-><init>()V

    invoke-static {p0, p2}, Lcom/samsung/android/app/SemExecutableInfo;->createActivityContext(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v2, 0x0

    return-object v2

    :cond_0
    sget-object v2, Lcom/android/internal/R$styleable;->command:[I

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/samsung/android/app/SemExecutableInfo;->mUid:Ljava/lang/String;

    const/4 v3, 0x2

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, v0, Lcom/samsung/android/app/SemExecutableInfo;->mEnabled:Z

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, v0, Lcom/samsung/android/app/SemExecutableInfo;->mLabelId:I

    invoke-virtual {v2, v4, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, v0, Lcom/samsung/android/app/SemExecutableInfo;->mIconId:I

    const/4 v4, 0x4

    invoke-virtual {v2, v4, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, v0, Lcom/samsung/android/app/SemExecutableInfo;->mSmallIconId:I

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0
.end method

.method private blacklist getBundleString()Ljava/lang/String;
    .locals 6

    const-string v0, ""

    iget-object v1, p0, Lcom/samsung/android/app/SemExecutableInfo;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/samsung/android/app/SemExecutableInfo;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string/jumbo v5, "{"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/samsung/android/app/SemExecutableInfo;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v5, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "}"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist scanExecutableInfos(Landroid/content/Context;)Ljava/util/List;
    .locals 39
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/SemExecutableInfo;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v2, "Reading SemExecutableInfo metadata for "

    sget-boolean v0, Lcom/samsung/android/app/SemExecutableInfo;->DEBUG:Z

    const-string v3, "SemExecutableInfo"

    if-eqz v0, :cond_0

    const-string/jumbo v0, "scan scanExecutableInfos start"

    invoke-static {v3, v0}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v4, "com.samsung.android.support.executable"

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v0

    const/4 v0, 0x0

    const/16 v7, 0x280

    new-instance v8, Landroid/content/Intent;

    const-string v9, "com.samsung.android.support.executable"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v10, 0x280

    invoke-virtual {v5, v8, v10}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v8

    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v11, v10}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v11

    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v12, v10}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v10

    const/4 v12, 0x3

    new-array v13, v12, [Ljava/util/List;

    const/4 v14, 0x0

    aput-object v8, v13, v14

    const/4 v15, 0x1

    aput-object v11, v13, v15

    const/4 v14, 0x2

    aput-object v10, v13, v14

    array-length v12, v13

    const/4 v14, 0x0

    :goto_0
    if-ge v14, v12, :cond_18

    aget-object v17, v13, v14

    sget-boolean v18, Lcom/samsung/android/app/SemExecutableInfo;->DEBUG:Z

    if-eqz v18, :cond_1

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v19, v0

    const-string/jumbo v0, "list size = "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v15

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    move-object/from16 v19, v0

    :goto_1
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v20, v4

    move-object v4, v0

    check-cast v4, Landroid/content/pm/ResolveInfo;

    const/4 v0, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x1

    const/16 v24, 0x1

    move-object/from16 v25, v0

    iget-object v0, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_2

    iget-object v0, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v25, v0

    iget-object v0, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v21, v0

    iget-object v0, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    const/16 v18, 0x1

    xor-int/lit8 v0, v0, 0x1

    move/from16 v23, v0

    iget-object v0, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-boolean v0, v0, Landroid/content/pm/ActivityInfo;->enabled:Z

    xor-int/lit8 v0, v0, 0x1

    move/from16 v24, v0

    move-object/from16 v26, v4

    move-object/from16 v4, v25

    move-object/from16 v36, v21

    move-object/from16 v21, v5

    move-object/from16 v5, v36

    move/from16 v37, v23

    move/from16 v23, v7

    move/from16 v7, v37

    move/from16 v38, v24

    move-object/from16 v24, v8

    move/from16 v8, v38

    goto :goto_3

    :cond_2
    iget-object v0, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v0, :cond_3

    iget-object v0, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v25, v0

    iget-object v0, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v21, v0

    iget-object v0, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    const/16 v18, 0x1

    xor-int/lit8 v0, v0, 0x1

    move/from16 v23, v0

    iget-object v0, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-boolean v0, v0, Landroid/content/pm/ServiceInfo;->enabled:Z

    xor-int/lit8 v0, v0, 0x1

    move/from16 v24, v0

    move-object/from16 v26, v4

    move-object/from16 v4, v25

    move-object/from16 v36, v21

    move-object/from16 v21, v5

    move-object/from16 v5, v36

    move/from16 v37, v23

    move/from16 v23, v7

    move/from16 v7, v37

    move/from16 v38, v24

    move-object/from16 v24, v8

    move/from16 v8, v38

    goto :goto_3

    :cond_3
    move-object/from16 v26, v4

    move-object/from16 v4, v25

    move-object/from16 v36, v21

    move-object/from16 v21, v5

    move-object/from16 v5, v36

    move/from16 v37, v23

    move/from16 v23, v7

    move/from16 v7, v37

    move/from16 v38, v24

    move-object/from16 v24, v8

    move/from16 v8, v38

    :goto_3
    if-nez v7, :cond_15

    if-eqz v8, :cond_4

    move-object/from16 v28, v4

    move-object/from16 v34, v5

    move-object/from16 v29, v9

    move-object/from16 v25, v10

    move-object/from16 v27, v11

    move/from16 v32, v12

    move-object/from16 v30, v13

    goto/16 :goto_11

    :cond_4
    new-instance v0, Landroid/content/ComponentName;

    move-object/from16 v25, v10

    iget-object v10, v4, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v27, v11

    iget-object v11, v4, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v10, v0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v5, v0, v9}, Landroid/content/pm/ApplicationInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    if-nez v0, :cond_5

    move-object/from16 v29, v9

    move/from16 v32, v12

    move-object/from16 v30, v13

    goto/16 :goto_12

    :cond_5
    const/16 v19, 0x0

    const/4 v11, 0x0

    const/16 v22, 0x0

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v28
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_29
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_28

    move/from16 v36, v28

    move-object/from16 v28, v4

    move/from16 v4, v36

    :goto_4
    move-object/from16 v29, v9

    const/4 v9, 0x1

    if-eq v4, v9, :cond_14

    :try_start_1
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v18
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_27
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_26
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_25
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_24

    move-object/from16 v30, v18

    const-string v9, "command"

    move/from16 v31, v11

    const-string v11, "executable"

    move/from16 v32, v12

    const/4 v12, 0x2

    if-ne v4, v12, :cond_c

    move-object/from16 v12, v30

    :try_start_2
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    const/4 v11, 0x1

    goto :goto_5

    :cond_6
    move/from16 v11, v31

    :goto_5
    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_13
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_12
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_11
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_10

    if-eqz v9, :cond_8

    if-eqz v11, :cond_7

    const/16 v22, 0x1

    :try_start_3
    invoke-static {v0}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v9

    invoke-static {v1, v9, v10}, Lcom/samsung/android/app/SemExecutableInfo;->getActivityMetaData(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/content/ComponentName;)Lcom/samsung/android/app/SemExecutableInfo;

    move-result-object v30
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-object/from16 v19, v30

    move-object/from16 v30, v13

    move-object/from16 v9, v19

    goto :goto_6

    :catch_0
    move-exception v0

    move-object/from16 v34, v5

    move-object/from16 v30, v13

    goto/16 :goto_c

    :catch_1
    move-exception v0

    move-object/from16 v34, v5

    move-object/from16 v30, v13

    goto/16 :goto_d

    :catch_2
    move-exception v0

    move-object/from16 v34, v5

    move-object/from16 v30, v13

    goto/16 :goto_e

    :catch_3
    move-exception v0

    move-object/from16 v34, v5

    move-object/from16 v30, v13

    goto/16 :goto_f

    :cond_7
    :try_start_4
    new-instance v9, Lorg/xmlpull/v1/XmlPullParserException;
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_13
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_12
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_11
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_10

    move-object/from16 v30, v13

    :try_start_5
    const-string v13, "executable element wasn\'t started"

    invoke-direct {v9, v13}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    :catch_4
    move-exception v0

    move-object/from16 v34, v5

    goto/16 :goto_c

    :catch_5
    move-exception v0

    move-object/from16 v34, v5

    goto/16 :goto_d

    :catch_6
    move-exception v0

    move-object/from16 v34, v5

    goto/16 :goto_e

    :catch_7
    move-exception v0

    move-object/from16 v34, v5

    goto/16 :goto_f

    :cond_8
    move-object/from16 v30, v13

    move-object/from16 v9, v19

    :goto_6
    :try_start_6
    const-string v13, "extras-attr"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_e
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_d
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_c

    if-eqz v13, :cond_b

    if-eqz v11, :cond_a

    if-eqz v22, :cond_a

    :try_start_7
    invoke-static {v0}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v13

    if-eqz v9, :cond_9

    invoke-direct {v9, v1, v13}, Lcom/samsung/android/app/SemExecutableInfo;->addExtraAttribute(Landroid/content/Context;Landroid/util/AttributeSet;)V
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_a
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_9
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_8

    :cond_9
    move-object/from16 v19, v9

    goto :goto_7

    :catch_8
    move-exception v0

    move-object/from16 v34, v5

    move-object/from16 v19, v9

    goto/16 :goto_c

    :catch_9
    move-exception v0

    move-object/from16 v34, v5

    move-object/from16 v19, v9

    goto/16 :goto_d

    :catch_a
    move-exception v0

    move-object/from16 v34, v5

    move-object/from16 v19, v9

    goto/16 :goto_e

    :catch_b
    move-exception v0

    move-object/from16 v34, v5

    move-object/from16 v19, v9

    goto/16 :goto_f

    :cond_a
    :try_start_8
    new-instance v13, Lorg/xmlpull/v1/XmlPullParserException;
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_e
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_c

    move-object/from16 v19, v9

    :try_start_9
    const-string v9, "executable or command element wasn\'t started"

    invoke-direct {v13, v9}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v13
    :try_end_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_9} :catch_7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_9} :catch_6
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    :cond_b
    move-object/from16 v19, v9

    :goto_7
    move/from16 v33, v4

    move-object/from16 v34, v5

    goto/16 :goto_b

    :catch_c
    move-exception v0

    move-object/from16 v19, v9

    move-object/from16 v34, v5

    goto/16 :goto_c

    :catch_d
    move-exception v0

    move-object/from16 v19, v9

    move-object/from16 v34, v5

    goto/16 :goto_d

    :catch_e
    move-exception v0

    move-object/from16 v19, v9

    move-object/from16 v34, v5

    goto/16 :goto_e

    :catch_f
    move-exception v0

    move-object/from16 v19, v9

    move-object/from16 v34, v5

    goto/16 :goto_f

    :catch_10
    move-exception v0

    move-object/from16 v30, v13

    move-object/from16 v34, v5

    goto/16 :goto_c

    :catch_11
    move-exception v0

    move-object/from16 v30, v13

    move-object/from16 v34, v5

    goto/16 :goto_d

    :catch_12
    move-exception v0

    move-object/from16 v30, v13

    move-object/from16 v34, v5

    goto/16 :goto_e

    :catch_13
    move-exception v0

    move-object/from16 v30, v13

    move-object/from16 v34, v5

    goto/16 :goto_f

    :cond_c
    move-object/from16 v12, v30

    move-object/from16 v30, v13

    const/4 v13, 0x3

    if-ne v4, v13, :cond_13

    :try_start_a
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d

    const/4 v11, 0x0

    goto :goto_8

    :cond_d
    move/from16 v11, v31

    :goto_8
    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_12

    const/4 v9, 0x0

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/app/SemExecutableInfo;->checkValidate(Lcom/samsung/android/app/SemExecutableInfo;)Z

    move-result v16

    if-eqz v16, :cond_10

    invoke-static {}, Lcom/samsung/android/app/SemExecutableWhitelist;->getInstance()Lcom/samsung/android/app/SemExecutableWhitelist;

    move-result-object v16

    move-object/from16 v22, v16

    iget-object v13, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move/from16 v33, v4

    move-object/from16 v4, v22

    invoke-virtual {v4, v1, v13}, Lcom/samsung/android/app/SemExecutableWhitelist;->isAllowedToUseOrder(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v13
    :try_end_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_a} :catch_1f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_a} :catch_1e
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1d
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1c

    move-object/from16 v1, v19

    :try_start_b
    invoke-static {v1, v13}, Lcom/samsung/android/app/SemExecutableInfo;->examineOrderInCategory(Lcom/samsung/android/app/SemExecutableInfo;Z)V

    move-object/from16 v19, v4

    iget-object v4, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {v1, v4}, Lcom/samsung/android/app/SemExecutableInfo;->setId(Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :goto_9
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_f

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/samsung/android/app/SemExecutableInfo;
    :try_end_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_b} :catch_1b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b .. :try_end_b} :catch_1a
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_19
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_18

    move-object/from16 v34, v5

    :try_start_c
    invoke-virtual/range {v31 .. v31}, Lcom/samsung/android/app/SemExecutableInfo;->getId()Ljava/lang/String;

    move-result-object v5

    move/from16 v35, v9

    invoke-virtual {v1}, Lcom/samsung/android/app/SemExecutableInfo;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_e

    const/4 v4, 0x1

    :cond_e
    move-object/from16 v5, v34

    move/from16 v9, v35

    goto :goto_9

    :cond_f
    move-object/from16 v34, v5

    move/from16 v35, v9

    if-nez v4, :cond_11

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_c} :catch_17
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c .. :try_end_c} :catch_16
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_15
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_14

    goto :goto_a

    :catch_14
    move-exception v0

    move-object/from16 v19, v1

    goto/16 :goto_c

    :catch_15
    move-exception v0

    move-object/from16 v19, v1

    goto/16 :goto_d

    :catch_16
    move-exception v0

    move-object/from16 v19, v1

    goto/16 :goto_e

    :catch_17
    move-exception v0

    move-object/from16 v19, v1

    goto/16 :goto_f

    :catch_18
    move-exception v0

    move-object/from16 v34, v5

    move-object/from16 v19, v1

    goto/16 :goto_c

    :catch_19
    move-exception v0

    move-object/from16 v34, v5

    move-object/from16 v19, v1

    goto/16 :goto_d

    :catch_1a
    move-exception v0

    move-object/from16 v34, v5

    move-object/from16 v19, v1

    goto/16 :goto_e

    :catch_1b
    move-exception v0

    move-object/from16 v34, v5

    move-object/from16 v19, v1

    goto/16 :goto_f

    :cond_10
    move/from16 v33, v4

    move-object/from16 v34, v5

    move/from16 v35, v9

    move-object/from16 v1, v19

    :cond_11
    :goto_a
    const/4 v1, 0x0

    move-object/from16 v19, v1

    move/from16 v22, v35

    goto :goto_b

    :cond_12
    move/from16 v33, v4

    move-object/from16 v34, v5

    move-object/from16 v1, v19

    goto :goto_b

    :catch_1c
    move-exception v0

    move-object/from16 v34, v5

    move-object/from16 v1, v19

    goto/16 :goto_c

    :catch_1d
    move-exception v0

    move-object/from16 v34, v5

    move-object/from16 v1, v19

    goto/16 :goto_d

    :catch_1e
    move-exception v0

    move-object/from16 v34, v5

    move-object/from16 v1, v19

    goto/16 :goto_e

    :catch_1f
    move-exception v0

    move-object/from16 v34, v5

    move-object/from16 v1, v19

    goto/16 :goto_f

    :cond_13
    move/from16 v33, v4

    move-object/from16 v34, v5

    move-object/from16 v1, v19

    move/from16 v11, v31

    :goto_b
    :try_start_d
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v1
    :try_end_d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_d} :catch_23
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_d .. :try_end_d} :catch_22
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_21
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_20

    move v4, v1

    move-object/from16 v1, p0

    move-object/from16 v9, v29

    move-object/from16 v13, v30

    move/from16 v12, v32

    move-object/from16 v5, v34

    goto/16 :goto_4

    :catch_20
    move-exception v0

    goto :goto_c

    :catch_21
    move-exception v0

    goto/16 :goto_d

    :catch_22
    move-exception v0

    goto/16 :goto_e

    :catch_23
    move-exception v0

    goto/16 :goto_f

    :catch_24
    move-exception v0

    move-object/from16 v34, v5

    move/from16 v32, v12

    move-object/from16 v30, v13

    move-object/from16 v1, v19

    goto :goto_c

    :catch_25
    move-exception v0

    move-object/from16 v34, v5

    move/from16 v32, v12

    move-object/from16 v30, v13

    move-object/from16 v1, v19

    goto :goto_d

    :catch_26
    move-exception v0

    move-object/from16 v34, v5

    move/from16 v32, v12

    move-object/from16 v30, v13

    move-object/from16 v1, v19

    goto :goto_e

    :catch_27
    move-exception v0

    move-object/from16 v34, v5

    move/from16 v32, v12

    move-object/from16 v30, v13

    move-object/from16 v1, v19

    goto/16 :goto_f

    :cond_14
    move/from16 v33, v4

    move-object/from16 v34, v5

    move/from16 v31, v11

    move/from16 v32, v12

    move-object/from16 v30, v13

    move-object/from16 v1, v19

    goto/16 :goto_10

    :catch_28
    move-exception v0

    move-object/from16 v28, v4

    move-object/from16 v34, v5

    move-object/from16 v29, v9

    move/from16 v32, v12

    move-object/from16 v30, v13

    :goto_c
    const-string v1, "Unknown Exception while Reading SemExecutableInfo metadata"

    invoke-static {v3, v1, v0}, Lcom/samsung/android/util/SemLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_10

    :catch_29
    move-exception v0

    move-object/from16 v28, v4

    move-object/from16 v34, v5

    move-object/from16 v29, v9

    move/from16 v32, v12

    move-object/from16 v30, v13

    :goto_d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1, v0}, Lcom/samsung/android/util/SemLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_10

    :catch_2a
    move-exception v0

    move-object/from16 v28, v4

    move-object/from16 v34, v5

    move-object/from16 v29, v9

    move/from16 v32, v12

    move-object/from16 v30, v13

    :goto_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1, v0}, Lcom/samsung/android/util/SemLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_10

    :catch_2b
    move-exception v0

    move-object/from16 v28, v4

    move-object/from16 v34, v5

    move-object/from16 v29, v9

    move/from16 v32, v12

    move-object/from16 v30, v13

    :goto_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid attribute in metadata for "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ": "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/samsung/android/util/SemLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    nop

    :goto_10
    move-object/from16 v1, p0

    move-object/from16 v4, v20

    move-object/from16 v5, v21

    move/from16 v7, v23

    move-object/from16 v8, v24

    move-object/from16 v10, v25

    move-object/from16 v11, v27

    move-object/from16 v9, v29

    move-object/from16 v13, v30

    move/from16 v12, v32

    goto/16 :goto_2

    :cond_15
    move-object/from16 v28, v4

    move-object/from16 v34, v5

    move-object/from16 v29, v9

    move-object/from16 v25, v10

    move-object/from16 v27, v11

    move/from16 v32, v12

    move-object/from16 v30, v13

    :goto_11
    sget-boolean v0, Lcom/samsung/android/app/SemExecutableInfo;->DEBUG:Z

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "skip disable component: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    :goto_12
    move-object/from16 v1, p0

    move-object/from16 v4, v20

    move-object/from16 v5, v21

    move/from16 v7, v23

    move-object/from16 v8, v24

    move-object/from16 v10, v25

    move-object/from16 v11, v27

    move-object/from16 v9, v29

    move-object/from16 v13, v30

    move/from16 v12, v32

    goto/16 :goto_2

    :cond_17
    move-object/from16 v20, v4

    move-object/from16 v21, v5

    move/from16 v23, v7

    move-object/from16 v24, v8

    move-object/from16 v29, v9

    move-object/from16 v25, v10

    move-object/from16 v27, v11

    move/from16 v32, v12

    move-object/from16 v30, v13

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v1, p0

    move-object/from16 v0, v19

    const/4 v15, 0x1

    goto/16 :goto_0

    :cond_18
    move-object/from16 v19, v0

    move-object/from16 v20, v4

    move-object/from16 v21, v5

    move/from16 v23, v7

    move-object/from16 v24, v8

    move-object/from16 v25, v10

    move-object/from16 v27, v11

    move-object/from16 v30, v13

    sget-boolean v0, Lcom/samsung/android/app/SemExecutableInfo;->DEBUG:Z

    if-eqz v0, :cond_19

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "scan SemExecutableInfo end: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_19
    return-object v6
.end method

.method private blacklist setId(Ljava/lang/String;)V
    .locals 8

    const-string v0, "SemExecutableInfo"

    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    const-string v2, "executable"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/app/SemExecutableInfo;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/app/SemExecutableInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/app/SemExecutableInfo;->getComponentName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/app/SemExecutableInfo;->getLaunchType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/samsung/android/app/SemExecutableInfo;->getBundleString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/app/SemExecutableInfo;->mUid:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Use defined mUid: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mUid:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v0

    goto :goto_0

    :catch_0
    move-exception v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Not set mUid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/app/SemExecutableInfo;->mUid:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-virtual {v1, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mUid:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/samsung/android/app/SemExecutableInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/samsung/android/app/SemExecutableInfo;

    iget-boolean v3, p0, Lcom/samsung/android/app/SemExecutableInfo;->mEnabled:Z

    iget-boolean v4, v1, Lcom/samsung/android/app/SemExecutableInfo;->mEnabled:Z

    if-eq v3, v4, :cond_2

    return v2

    :cond_2
    iget v3, p0, Lcom/samsung/android/app/SemExecutableInfo;->mLabelId:I

    iget v4, v1, Lcom/samsung/android/app/SemExecutableInfo;->mLabelId:I

    if-eq v3, v4, :cond_3

    return v2

    :cond_3
    iget v3, p0, Lcom/samsung/android/app/SemExecutableInfo;->mIconId:I

    iget v4, v1, Lcom/samsung/android/app/SemExecutableInfo;->mIconId:I

    if-eq v3, v4, :cond_4

    return v2

    :cond_4
    iget v3, p0, Lcom/samsung/android/app/SemExecutableInfo;->mSmallIconId:I

    iget v4, v1, Lcom/samsung/android/app/SemExecutableInfo;->mSmallIconId:I

    if-eq v3, v4, :cond_5

    return v2

    :cond_5
    iget v3, p0, Lcom/samsung/android/app/SemExecutableInfo;->mLaunchType:I

    iget v4, v1, Lcom/samsung/android/app/SemExecutableInfo;->mLaunchType:I

    if-eq v3, v4, :cond_6

    return v2

    :cond_6
    iget-object v3, p0, Lcom/samsung/android/app/SemExecutableInfo;->mUid:Ljava/lang/String;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/samsung/android/app/SemExecutableInfo;->mUid:Ljava/lang/String;

    iget-object v4, v1, Lcom/samsung/android/app/SemExecutableInfo;->mUid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    goto :goto_0

    :cond_7
    iget-object v3, v1, Lcom/samsung/android/app/SemExecutableInfo;->mUid:Ljava/lang/String;

    if-eqz v3, :cond_8

    :goto_0
    return v2

    :cond_8
    iget-object v3, p0, Lcom/samsung/android/app/SemExecutableInfo;->mCategory:Ljava/lang/String;

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/samsung/android/app/SemExecutableInfo;->mCategory:Ljava/lang/String;

    iget-object v4, v1, Lcom/samsung/android/app/SemExecutableInfo;->mCategory:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    goto :goto_1

    :cond_9
    iget-object v3, v1, Lcom/samsung/android/app/SemExecutableInfo;->mCategory:Ljava/lang/String;

    if-eqz v3, :cond_a

    :goto_1
    return v2

    :cond_a
    iget-object v3, p0, Lcom/samsung/android/app/SemExecutableInfo;->mAction:Ljava/lang/String;

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/samsung/android/app/SemExecutableInfo;->mAction:Ljava/lang/String;

    iget-object v4, v1, Lcom/samsung/android/app/SemExecutableInfo;->mAction:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    goto :goto_2

    :cond_b
    iget-object v3, v1, Lcom/samsung/android/app/SemExecutableInfo;->mAction:Ljava/lang/String;

    if-eqz v3, :cond_c

    :goto_2
    return v2

    :cond_c
    iget-object v3, p0, Lcom/samsung/android/app/SemExecutableInfo;->mPackageName:Ljava/lang/String;

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/samsung/android/app/SemExecutableInfo;->mPackageName:Ljava/lang/String;

    iget-object v4, v1, Lcom/samsung/android/app/SemExecutableInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    goto :goto_3

    :cond_d
    iget-object v3, v1, Lcom/samsung/android/app/SemExecutableInfo;->mPackageName:Ljava/lang/String;

    if-eqz v3, :cond_e

    :goto_3
    return v2

    :cond_e
    iget-object v3, p0, Lcom/samsung/android/app/SemExecutableInfo;->mFeatureNames:Ljava/util/List;

    if-eqz v3, :cond_f

    iget-object v3, p0, Lcom/samsung/android/app/SemExecutableInfo;->mFeatureNames:Ljava/util/List;

    iget-object v4, v1, Lcom/samsung/android/app/SemExecutableInfo;->mFeatureNames:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    goto :goto_4

    :cond_f
    iget-object v3, v1, Lcom/samsung/android/app/SemExecutableInfo;->mFeatureNames:Ljava/util/List;

    if-eqz v3, :cond_10

    :goto_4
    return v2

    :cond_10
    iget-object v3, p0, Lcom/samsung/android/app/SemExecutableInfo;->mFeatureValues:Ljava/util/List;

    if-eqz v3, :cond_11

    iget-object v3, p0, Lcom/samsung/android/app/SemExecutableInfo;->mFeatureValues:Ljava/util/List;

    iget-object v4, v1, Lcom/samsung/android/app/SemExecutableInfo;->mFeatureValues:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    goto :goto_5

    :cond_11
    iget-object v3, v1, Lcom/samsung/android/app/SemExecutableInfo;->mFeatureValues:Ljava/util/List;

    if-eqz v3, :cond_12

    :goto_5
    return v2

    :cond_12
    iget-object v3, p0, Lcom/samsung/android/app/SemExecutableInfo;->mBundle:Landroid/os/Bundle;

    if-eqz v3, :cond_13

    iget-object v3, p0, Lcom/samsung/android/app/SemExecutableInfo;->mBundle:Landroid/os/Bundle;

    iget-object v4, v1, Lcom/samsung/android/app/SemExecutableInfo;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14

    goto :goto_6

    :cond_13
    iget-object v3, v1, Lcom/samsung/android/app/SemExecutableInfo;->mBundle:Landroid/os/Bundle;

    if-eqz v3, :cond_14

    :goto_6
    return v2

    :cond_14
    iget-object v3, p0, Lcom/samsung/android/app/SemExecutableInfo;->mComponentName:Ljava/lang/String;

    if-eqz v3, :cond_15

    iget-object v3, p0, Lcom/samsung/android/app/SemExecutableInfo;->mComponentName:Ljava/lang/String;

    iget-object v4, v1, Lcom/samsung/android/app/SemExecutableInfo;->mComponentName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_16

    goto :goto_7

    :cond_15
    iget-object v3, v1, Lcom/samsung/android/app/SemExecutableInfo;->mComponentName:Ljava/lang/String;

    if-eqz v3, :cond_16

    :goto_7
    return v2

    :cond_16
    iget-object v3, p0, Lcom/samsung/android/app/SemExecutableInfo;->mActivityLaunchMode:Ljava/lang/String;

    if-eqz v3, :cond_17

    iget-object v3, p0, Lcom/samsung/android/app/SemExecutableInfo;->mActivityLaunchMode:Ljava/lang/String;

    iget-object v4, v1, Lcom/samsung/android/app/SemExecutableInfo;->mActivityLaunchMode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_18

    goto :goto_8

    :cond_17
    iget-object v3, v1, Lcom/samsung/android/app/SemExecutableInfo;->mActivityLaunchMode:Ljava/lang/String;

    if-eqz v3, :cond_18

    :goto_8
    return v2

    :cond_18
    return v0
.end method

.method public whitelist getAction()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mAction:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getActivityLaunchMode()I
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/app/SemExecutableInfo;->mActivityLaunchMode:Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/app/SemExecutableInfo;->mActivityLaunchMode:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/SemExecutableInfo;->mActivityLaunchMode:Ljava/lang/String;

    const-string v2, "\\|"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_4

    aget-object v3, v1, v2

    const-string/jumbo v4, "newTask"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/high16 v4, 0x10000000

    or-int/2addr v0, v4

    goto :goto_1

    :cond_1
    const-string/jumbo v4, "singleTop"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/high16 v4, 0x20000000

    or-int/2addr v0, v4

    :cond_2
    :goto_1
    const-string v4, "clearTop"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/high16 v4, 0x4000000

    or-int/2addr v0, v4

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return v0

    :cond_5
    :goto_2
    return v0
.end method

.method public whitelist getCategories()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mCategory:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mCategory:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mCategory:Ljava/lang/String;

    const-string v1, "\\|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1

    :cond_1
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public whitelist getComponentName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mComponentName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getExtras()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public whitelist getIconId()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mIconId:I

    return v0
.end method

.method public whitelist getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mUid:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getLabelId()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mLabelId:I

    return v0
.end method

.method public whitelist getLaunchType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mLaunchType:I

    return v0
.end method

.method public whitelist getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getSmallIconId()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mSmallIconId:I

    return v0
.end method

.method public blacklist isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mEnabled:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SemExecutableInfo{enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/app/SemExecutableInfo;->mEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/SemExecutableInfo;->mUid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", labelId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/app/SemExecutableInfo;->mLabelId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", iconIId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/app/SemExecutableInfo;->mIconId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", smallIconIId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/app/SemExecutableInfo;->mSmallIconId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/app/SemExecutableInfo;->mLaunchType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", category="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/SemExecutableInfo;->mCategory:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", action=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/SemExecutableInfo;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", packageName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/app/SemExecutableInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", componentName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/app/SemExecutableInfo;->mComponentName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", launchMode=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/app/SemExecutableInfo;->mActivityLaunchMode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Lcom/samsung/android/app/SemExecutableInfo;->mFeatureNames:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    const-string v4, ", featureName =\'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/app/SemExecutableInfo;->mFeatureNames:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v4, ", featureValue = \'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/app/SemExecutableInfo;->mFeatureValues:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const-string v3, ", mBundle =\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/samsung/android/app/SemExecutableInfo;->getBundleString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mUid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mEnabled:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mLabelId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mIconId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mSmallIconId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mLaunchType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mCategory:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mAction:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mFeatureNames:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mFeatureValues:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mBundle:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mComponentName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mActivityLaunchMode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
