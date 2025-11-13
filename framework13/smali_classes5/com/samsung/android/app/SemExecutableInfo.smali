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

    .line 66
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/app/SemExecutableInfo;->DEBUG:Z

    .line 145
    new-instance v0, Lcom/samsung/android/app/SemExecutableInfo$1;

    invoke-direct {v0}, Lcom/samsung/android/app/SemExecutableInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/SemExecutableInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 1

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mUid:Ljava/lang/String;

    .line 126
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mEnabled:Z

    .line 136
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mBundle:Landroid/os/Bundle;

    .line 159
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mFeatureNames:Ljava/util/List;

    .line 160
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mFeatureValues:Ljava/util/List;

    .line 161
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 164
    invoke-direct {p0}, Lcom/samsung/android/app/SemExecutableInfo;-><init>()V

    .line 166
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mUid:Ljava/lang/String;

    .line 167
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mEnabled:Z

    .line 168
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mLabelId:I

    .line 169
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mIconId:I

    .line 170
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mSmallIconId:I

    .line 171
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mLaunchType:I

    .line 172
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mCategory:Ljava/lang/String;

    .line 173
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mAction:Ljava/lang/String;

    .line 174
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mPackageName:Ljava/lang/String;

    .line 176
    iget-object v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mFeatureNames:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 177
    iget-object v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mFeatureValues:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 179
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mBundle:Landroid/os/Bundle;

    .line 181
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mComponentName:Ljava/lang/String;

    .line 182
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mActivityLaunchMode:Ljava/lang/String;

    .line 183
    return-void
.end method

.method private blacklist addExtraAttribute(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .param p1, "activityContext"    # Landroid/content/Context;
    .param p2, "attr"    # Landroid/util/AttributeSet;

    .line 341
    sget-object v0, Lcom/android/internal/R$styleable;->extrasCommand:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 342
    .local v0, "ta":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 343
    .local v2, "name":Ljava/lang/String;
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 344
    .local v4, "key":Ljava/lang/String;
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 346
    .local v6, "value":Ljava/lang/String;
    const-string v7, "launchMode"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 347
    iput-object v6, p0, Lcom/samsung/android/app/SemExecutableInfo;->mActivityLaunchMode:Ljava/lang/String;

    goto/16 :goto_0

    .line 348
    :cond_0
    const-string/jumbo v7, "type"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 349
    const-string v7, "activity"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 350
    iput v1, p0, Lcom/samsung/android/app/SemExecutableInfo;->mLaunchType:I

    goto/16 :goto_0

    .line 351
    :cond_1
    const-string/jumbo v7, "service"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 352
    iput v5, p0, Lcom/samsung/android/app/SemExecutableInfo;->mLaunchType:I

    goto/16 :goto_0

    .line 353
    :cond_2
    const-string v5, "broadcast"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 354
    iput v3, p0, Lcom/samsung/android/app/SemExecutableInfo;->mLaunchType:I

    goto/16 :goto_0

    .line 355
    :cond_3
    const-string v3, "activityForResult"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 356
    const/4 v1, 0x3

    iput v1, p0, Lcom/samsung/android/app/SemExecutableInfo;->mLaunchType:I

    goto :goto_0

    .line 358
    :cond_4
    iput v1, p0, Lcom/samsung/android/app/SemExecutableInfo;->mLaunchType:I

    goto :goto_0

    .line 360
    :cond_5
    const-string v1, "category"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 361
    iput-object v6, p0, Lcom/samsung/android/app/SemExecutableInfo;->mCategory:Ljava/lang/String;

    goto :goto_0

    .line 362
    :cond_6
    const-string v1, "action"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 363
    iput-object v6, p0, Lcom/samsung/android/app/SemExecutableInfo;->mAction:Ljava/lang/String;

    goto :goto_0

    .line 364
    :cond_7
    const-string/jumbo v1, "packageName"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 365
    iput-object v6, p0, Lcom/samsung/android/app/SemExecutableInfo;->mPackageName:Ljava/lang/String;

    goto :goto_0

    .line 366
    :cond_8
    const-string v1, "componentName"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 367
    iput-object v6, p0, Lcom/samsung/android/app/SemExecutableInfo;->mComponentName:Ljava/lang/String;

    goto :goto_0

    .line 368
    :cond_9
    const-string v1, "feature"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 369
    iget-object v1, p0, Lcom/samsung/android/app/SemExecutableInfo;->mFeatureNames:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 370
    iget-object v1, p0, Lcom/samsung/android/app/SemExecutableInfo;->mFeatureValues:Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 371
    :cond_a
    const-string v1, "extras"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 372
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 373
    iget-object v1, p0, Lcom/samsung/android/app/SemExecutableInfo;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v1, v4, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    :cond_b
    :goto_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 377
    return-void
.end method

.method private static blacklist checkValidate(Lcom/samsung/android/app/SemExecutableInfo;)Z
    .locals 10
    .param p0, "info"    # Lcom/samsung/android/app/SemExecutableInfo;

    .line 618
    const-string v0, "SemExecutableInfo"

    const/4 v1, 0x0

    if-nez p0, :cond_1

    .line 619
    sget-boolean v2, Lcom/samsung/android/app/SemExecutableInfo;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 620
    const-string v2, "Invalid SemExecutableInfo"

    invoke-static {v0, v2}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    :cond_0
    return v1

    .line 626
    :cond_1
    iget-boolean v2, p0, Lcom/samsung/android/app/SemExecutableInfo;->mEnabled:Z

    if-nez v2, :cond_3

    .line 627
    sget-boolean v2, Lcom/samsung/android/app/SemExecutableInfo;->DEBUG:Z

    if-eqz v2, :cond_2

    .line 628
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

    .line 629
    :cond_2
    return v1

    .line 631
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

    .line 632
    :cond_4
    sget-boolean v2, Lcom/samsung/android/app/SemExecutableInfo;->DEBUG:Z

    if-eqz v2, :cond_5

    .line 633
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

    .line 634
    :cond_5
    return v1

    .line 636
    :cond_6
    invoke-virtual {p0}, Lcom/samsung/android/app/SemExecutableInfo;->getLabelId()I

    move-result v2

    if-eqz v2, :cond_1f

    invoke-virtual {p0}, Lcom/samsung/android/app/SemExecutableInfo;->getIconId()I

    move-result v2

    if-nez v2, :cond_7

    goto/16 :goto_5

    .line 646
    :cond_7
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/app/SemExecutableInfo;->mFeatureNames:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v2, v3, :cond_1e

    .line 647
    iget-object v3, p0, Lcom/samsung/android/app/SemExecutableInfo;->mFeatureNames:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 648
    .local v3, "featureName":Ljava/lang/String;
    iget-object v5, p0, Lcom/samsung/android/app/SemExecutableInfo;->mFeatureValues:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 650
    .local v5, "featureValue":Ljava/lang/String;
    if-eqz v3, :cond_17

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_17

    if-eqz v5, :cond_17

    .line 651
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_17

    .line 653
    const-string v6, "CscFeature_"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    const-string v7, "] "

    const-string v8, " is not ["

    const-string v9, "!"

    if-eqz v6, :cond_c

    .line 655
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 657
    .local v6, "str":Ljava/lang/String;
    invoke-virtual {v5, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 658
    invoke-virtual {v5, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 659
    .local v7, "value":Ljava/lang/String;
    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-ne v8, v4, :cond_8

    .line 660
    return v1

    .line 659
    .end local v7    # "value":Ljava/lang/String;
    :cond_8
    goto :goto_1

    .line 662
    :cond_9
    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 663
    sget-boolean v4, Lcom/samsung/android/app/SemExecutableInfo;->DEBUG:Z

    if-eqz v4, :cond_a

    .line 664
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

    .line 666
    :cond_a
    return v1

    .line 662
    :cond_b
    :goto_1
    nop

    .line 668
    .end local v6    # "str":Ljava/lang/String;
    goto/16 :goto_4

    :cond_c
    const-string v6, "SEC_FLOATING_FEATURE_"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 670
    const-string v6, ""

    .line 672
    .restart local v6    # "str":Ljava/lang/String;
    invoke-virtual {v5, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 673
    invoke-virtual {v5, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 674
    .restart local v7    # "value":Ljava/lang/String;
    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-ne v8, v4, :cond_d

    .line 675
    return v1

    .line 674
    .end local v7    # "value":Ljava/lang/String;
    :cond_d
    goto :goto_2

    .line 677
    :cond_e
    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_10

    .line 678
    sget-boolean v4, Lcom/samsung/android/app/SemExecutableInfo;->DEBUG:Z

    if-eqz v4, :cond_f

    .line 679
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

    .line 681
    :cond_f
    return v1

    .line 677
    :cond_10
    :goto_2
    nop

    .line 683
    .end local v6    # "str":Ljava/lang/String;
    goto/16 :goto_4

    :cond_11
    const-string v6, "SEC_PRODUCT_FEATURE_"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 685
    return v1

    .line 731
    :cond_12
    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 733
    .restart local v6    # "str":Ljava/lang/String;
    invoke-virtual {v5, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_14

    .line 734
    invoke-virtual {v5, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 735
    .restart local v7    # "value":Ljava/lang/String;
    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-ne v8, v4, :cond_13

    .line 736
    return v1

    .line 735
    .end local v7    # "value":Ljava/lang/String;
    :cond_13
    goto :goto_3

    .line 738
    :cond_14
    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_16

    .line 739
    sget-boolean v4, Lcom/samsung/android/app/SemExecutableInfo;->DEBUG:Z

    if-eqz v4, :cond_15

    .line 740
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

    .line 742
    :cond_15
    return v1

    .line 738
    :cond_16
    :goto_3
    nop

    .line 744
    .end local v6    # "str":Ljava/lang/String;
    goto/16 :goto_4

    .line 745
    :cond_17
    const-string v4, " "

    if-eqz v3, :cond_1a

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_1a

    if-eqz v5, :cond_18

    if-eqz v5, :cond_1a

    .line 746
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-gtz v6, :cond_1a

    .line 748
    :cond_18
    sget-boolean v6, Lcom/samsung/android/app/SemExecutableInfo;->DEBUG:Z

    if-eqz v6, :cond_19

    .line 749
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

    .line 751
    :cond_19
    return v1

    .line 752
    :cond_1a
    if-eqz v5, :cond_1d

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_1d

    if-eqz v3, :cond_1b

    if-eqz v3, :cond_1d

    .line 753
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-gtz v6, :cond_1d

    .line 755
    :cond_1b
    sget-boolean v6, Lcom/samsung/android/app/SemExecutableInfo;->DEBUG:Z

    if-eqz v6, :cond_1c

    .line 756
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

    .line 758
    :cond_1c
    return v1

    .line 646
    .end local v3    # "featureName":Ljava/lang/String;
    .end local v5    # "featureValue":Ljava/lang/String;
    :cond_1d
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 761
    .end local v2    # "i":I
    :cond_1e
    return v4

    .line 637
    :cond_1f
    :goto_5
    sget-boolean v2, Lcom/samsung/android/app/SemExecutableInfo;->DEBUG:Z

    if-eqz v2, :cond_20

    .line 638
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

    .line 639
    :cond_20
    return v1
.end method

.method private static blacklist createActivityContext(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/content/Context;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .line 453
    const-string v0, "SemExecutableInfo"

    const/4 v1, 0x0

    .line 455
    .local v1, "theirContext":Landroid/content/Context;
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

    .line 460
    :goto_0
    goto :goto_1

    .line 458
    :catch_0
    move-exception v2

    .line 459
    .local v2, "e":Ljava/lang/SecurityException;
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

    .line 456
    .end local v2    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v2

    .line 457
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
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

    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0

    .line 462
    :goto_1
    return-object v1
.end method

.method private static blacklist examineOrderInCategory(Lcom/samsung/android/app/SemExecutableInfo;Z)V
    .locals 17
    .param p0, "info"    # Lcom/samsung/android/app/SemExecutableInfo;
    .param p1, "isSamsungApps"    # Z

    .line 387
    move-object/from16 v1, p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v0

    .line 388
    .local v2, "sb":Ljava/lang/StringBuilder;
    const-string v3, ""

    .line 389
    .local v3, "resultStr":Ljava/lang/String;
    const/16 v0, -0x270c

    .line 391
    .local v0, "order":I
    if-nez p1, :cond_0

    .line 392
    const/16 v0, -0x270d

    .line 394
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/SemExecutableInfo;->getCategories()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_b

    .line 395
    iget-object v4, v1, Lcom/samsung/android/app/SemExecutableInfo;->mCategory:Ljava/lang/String;

    const-string v5, "\\|"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 397
    .local v4, "categories":[Ljava/lang/String;
    array-length v5, v4

    const/4 v6, 0x0

    move v7, v0

    move v8, v6

    .end local v0    # "order":I
    .local v7, "order":I
    :goto_0
    if-ge v8, v5, :cond_a

    aget-object v10, v4, v8

    .line 399
    .local v10, "str":Ljava/lang/String;
    const-string v0, "@"

    invoke-virtual {v10, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 400
    .local v11, "strSplit":[Ljava/lang/String;
    array-length v12, v11

    .line 401
    .local v12, "size":I
    const-string v13, "SemExecutableInfo"

    const-string/jumbo v14, "|"

    packed-switch v12, :pswitch_data_0

    .line 436
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    sget-boolean v0, Lcom/samsung/android/app/SemExecutableInfo;->DEBUG:Z

    if-eqz v0, :cond_9

    .line 439
    const-string v0, "Invalid category format for category order"

    invoke-static {v13, v0}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 404
    :pswitch_0
    const/16 v9, -0x270f

    const/16 v15, -0x270d

    if-eq v7, v15, :cond_7

    .line 405
    :try_start_0
    aget-object v0, v11, v6

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v7, v0

    .line 407
    const/16 v0, -0x3e8

    if-lt v7, v0, :cond_1

    const/16 v0, 0x3e8

    if-le v7, v0, :cond_7

    .line 408
    :cond_1
    const/16 v7, -0x270f

    goto :goto_6

    .line 418
    :catchall_0
    move-exception v0

    goto :goto_3

    .line 411
    :catch_0
    move-exception v0

    .line 412
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    const/16 v7, -0x270e

    .line 413
    :try_start_1
    sget-boolean v16, Lcom/samsung/android/app/SemExecutableInfo;->DEBUG:Z

    if-eqz v16, :cond_2

    .line 414
    const-string v6, "Invalid order"

    invoke-static {v13, v6}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 418
    .end local v0    # "nfe":Ljava/lang/NumberFormatException;
    :cond_2
    if-eq v7, v9, :cond_4

    if-eq v7, v15, :cond_4

    const/16 v6, -0x270e

    if-ne v7, v6, :cond_3

    goto :goto_1

    .line 422
    :cond_3
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 425
    goto :goto_7

    .line 419
    :cond_4
    :goto_1
    const/4 v6, 0x1

    aget-object v0, v11, v6

    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 418
    :goto_3
    if-eq v7, v9, :cond_6

    if-eq v7, v15, :cond_6

    const/16 v5, -0x270e

    if-ne v7, v5, :cond_5

    goto :goto_4

    .line 422
    :cond_5
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 419
    :cond_6
    :goto_4
    const/4 v5, 0x1

    aget-object v5, v11, v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 425
    :goto_5
    throw v0

    .line 418
    :cond_7
    :goto_6
    if-eq v7, v9, :cond_8

    if-eq v7, v15, :cond_8

    const/16 v6, -0x270e

    if-ne v7, v6, :cond_3

    .line 419
    :cond_8
    const/4 v6, 0x1

    aget-object v0, v11, v6

    goto :goto_2

    .line 426
    :goto_7
    goto :goto_8

    .line 429
    :pswitch_1
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    .end local v10    # "str":Ljava/lang/String;
    .end local v11    # "strSplit":[Ljava/lang/String;
    .end local v12    # "size":I
    :cond_9
    :goto_8
    add-int/lit8 v8, v8, 0x1

    const/4 v6, 0x0

    goto/16 :goto_0

    .line 443
    :cond_a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 445
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v5, 0x1

    sub-int/2addr v0, v5

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/samsung/android/app/SemExecutableInfo;->mCategory:Ljava/lang/String;

    move v0, v7

    .line 447
    .end local v4    # "categories":[Ljava/lang/String;
    .end local v7    # "order":I
    .local v0, "order":I
    :cond_b
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static blacklist getActivityMetaData(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/content/ComponentName;)Lcom/samsung/android/app/SemExecutableInfo;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attr"    # Landroid/util/AttributeSet;
    .param p2, "cName"    # Landroid/content/ComponentName;

    .line 327
    new-instance v0, Lcom/samsung/android/app/SemExecutableInfo;

    invoke-direct {v0}, Lcom/samsung/android/app/SemExecutableInfo;-><init>()V

    .line 328
    .local v0, "result":Lcom/samsung/android/app/SemExecutableInfo;
    invoke-static {p0, p2}, Lcom/samsung/android/app/SemExecutableInfo;->createActivityContext(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/content/Context;

    move-result-object v1

    .line 329
    .local v1, "activityContext":Landroid/content/Context;
    if-nez v1, :cond_0

    const/4 v2, 0x0

    return-object v2

    .line 330
    :cond_0
    sget-object v2, Lcom/android/internal/R$styleable;->command:[I

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 331
    .local v2, "a":Landroid/content/res/TypedArray;
    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/samsung/android/app/SemExecutableInfo;->mUid:Ljava/lang/String;

    .line 332
    const/4 v3, 0x2

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, v0, Lcom/samsung/android/app/SemExecutableInfo;->mEnabled:Z

    .line 333
    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, v0, Lcom/samsung/android/app/SemExecutableInfo;->mLabelId:I

    .line 334
    invoke-virtual {v2, v4, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, v0, Lcom/samsung/android/app/SemExecutableInfo;->mIconId:I

    .line 335
    const/4 v4, 0x4

    invoke-virtual {v2, v4, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, v0, Lcom/samsung/android/app/SemExecutableInfo;->mSmallIconId:I

    .line 336
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 337
    return-object v0
.end method

.method private blacklist getBundleString()Ljava/lang/String;
    .locals 6

    .line 765
    const-string v0, ""

    .line 767
    .local v0, "result":Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/android/app/SemExecutableInfo;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 768
    return-object v0

    .line 770
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/samsung/android/app/SemExecutableInfo;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 771
    .local v1, "keyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 773
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 774
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 775
    .local v4, "key":Ljava/lang/String;
    const-string/jumbo v5, "{"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 776
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 777
    const-string v5, "="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 778
    iget-object v5, p0, Lcom/samsung/android/app/SemExecutableInfo;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v5, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 779
    const-string/jumbo v5, "}"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 780
    .end local v4    # "key":Ljava/lang/String;
    goto :goto_0

    .line 782
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 783
    return-object v0
.end method

.method public static blacklist scanExecutableInfos(Landroid/content/Context;)Ljava/util/List;
    .locals 38
    .param p0, "context"    # Landroid/content/Context;
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

    .line 471
    move-object/from16 v1, p0

    const-string v2, "Reading SemExecutableInfo metadata for "

    sget-boolean v0, Lcom/samsung/android/app/SemExecutableInfo;->DEBUG:Z

    const-string v3, "SemExecutableInfo"

    if-eqz v0, :cond_0

    .line 472
    const-string/jumbo v0, "scan scanExecutableInfos start"

    invoke-static {v3, v0}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    :cond_0
    const-string v4, "com.samsung.android.support.executable"

    .line 474
    .local v4, "ACTION_EXECUTABLE":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 476
    .local v5, "pm":Landroid/content/pm/PackageManager;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v0

    .line 477
    .local v6, "newSemExecutableInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/SemExecutableInfo;>;"
    const/4 v0, 0x0

    .line 479
    .local v0, "lastSemExecutableInfo":Lcom/samsung/android/app/SemExecutableInfo;
    const/16 v7, 0x280

    .line 482
    .local v7, "queryFlag":I
    new-instance v8, Landroid/content/Intent;

    const-string v9, "com.samsung.android.support.executable"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v10, 0x280

    invoke-virtual {v5, v8, v10}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v8

    .line 483
    .local v8, "activityExecutableList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v11, v10}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v11

    .line 484
    .local v11, "serviceExecutableList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v12, v10}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v10

    .line 486
    .local v10, "receiverExecutableList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v12, 0x3

    new-array v13, v12, [Ljava/util/List;

    const/4 v14, 0x0

    aput-object v8, v13, v14

    const/4 v15, 0x1

    aput-object v11, v13, v15

    const/4 v14, 0x2

    aput-object v10, v13, v14

    .line 492
    .local v13, "executableListArray":[Ljava/util/List;
    array-length v12, v13

    const/4 v14, 0x0

    :goto_0
    if-ge v14, v12, :cond_19

    aget-object v16, v13, v14

    .line 493
    .local v16, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    sget-boolean v17, Lcom/samsung/android/app/SemExecutableInfo;->DEBUG:Z

    if-eqz v17, :cond_1

    .line 494
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v18, v0

    .end local v0    # "lastSemExecutableInfo":Lcom/samsung/android/app/SemExecutableInfo;
    .local v18, "lastSemExecutableInfo":Lcom/samsung/android/app/SemExecutableInfo;
    const-string v0, "list size = "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v15

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 493
    .end local v18    # "lastSemExecutableInfo":Lcom/samsung/android/app/SemExecutableInfo;
    .restart local v0    # "lastSemExecutableInfo":Lcom/samsung/android/app/SemExecutableInfo;
    :cond_1
    move-object/from16 v18, v0

    .line 495
    .end local v0    # "lastSemExecutableInfo":Lcom/samsung/android/app/SemExecutableInfo;
    .restart local v18    # "lastSemExecutableInfo":Lcom/samsung/android/app/SemExecutableInfo;
    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v19, v4

    .end local v4    # "ACTION_EXECUTABLE":Ljava/lang/String;
    .local v19, "ACTION_EXECUTABLE":Ljava/lang/String;
    move-object v4, v0

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 496
    .local v4, "info":Landroid/content/pm/ResolveInfo;
    const/4 v0, 0x0

    .line 497
    .local v0, "itemInfo":Landroid/content/pm/PackageItemInfo;
    const/16 v20, 0x0

    .line 498
    .local v20, "appInfo":Landroid/content/pm/ApplicationInfo;
    const/16 v21, 0x0

    .line 500
    .local v21, "cName":Landroid/content/ComponentName;
    const/16 v22, 0x1

    .line 501
    .local v22, "isDisabled":Z
    const/16 v23, 0x1

    .line 503
    .local v23, "isComponentDisabled":Z
    move-object/from16 v24, v0

    .end local v0    # "itemInfo":Landroid/content/pm/PackageItemInfo;
    .local v24, "itemInfo":Landroid/content/pm/PackageItemInfo;
    iget-object v0, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_2

    .line 504
    iget-object v0, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 505
    .end local v24    # "itemInfo":Landroid/content/pm/PackageItemInfo;
    .restart local v0    # "itemInfo":Landroid/content/pm/PackageItemInfo;
    move-object/from16 v24, v0

    .end local v0    # "itemInfo":Landroid/content/pm/PackageItemInfo;
    .restart local v24    # "itemInfo":Landroid/content/pm/PackageItemInfo;
    iget-object v0, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 506
    .end local v20    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    move-object/from16 v20, v0

    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v20    # "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v0, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    const/16 v17, 0x1

    xor-int/lit8 v0, v0, 0x1

    move/from16 v22, v0

    .line 507
    iget-object v0, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-boolean v0, v0, Landroid/content/pm/ActivityInfo;->enabled:Z

    xor-int/lit8 v0, v0, 0x1

    move/from16 v23, v0

    move-object/from16 v25, v4

    move-object/from16 v4, v24

    move-object/from16 v35, v20

    move-object/from16 v20, v5

    move-object/from16 v5, v35

    move/from16 v36, v22

    move/from16 v22, v7

    move/from16 v7, v36

    move/from16 v37, v23

    move-object/from16 v23, v8

    move/from16 v8, v37

    goto :goto_3

    .line 508
    :cond_2
    iget-object v0, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v0, :cond_3

    .line 509
    iget-object v0, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 510
    .end local v24    # "itemInfo":Landroid/content/pm/PackageItemInfo;
    .local v0, "itemInfo":Landroid/content/pm/PackageItemInfo;
    move-object/from16 v24, v0

    .end local v0    # "itemInfo":Landroid/content/pm/PackageItemInfo;
    .restart local v24    # "itemInfo":Landroid/content/pm/PackageItemInfo;
    iget-object v0, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 511
    .end local v20    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    move-object/from16 v20, v0

    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v20    # "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v0, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    const/16 v17, 0x1

    xor-int/lit8 v0, v0, 0x1

    move/from16 v22, v0

    .line 512
    iget-object v0, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-boolean v0, v0, Landroid/content/pm/ServiceInfo;->enabled:Z

    xor-int/lit8 v0, v0, 0x1

    move/from16 v23, v0

    move-object/from16 v25, v4

    move-object/from16 v4, v24

    move-object/from16 v35, v20

    move-object/from16 v20, v5

    move-object/from16 v5, v35

    move/from16 v36, v22

    move/from16 v22, v7

    move/from16 v7, v36

    move/from16 v37, v23

    move-object/from16 v23, v8

    move/from16 v8, v37

    goto :goto_3

    .line 508
    :cond_3
    move-object/from16 v25, v4

    move-object/from16 v4, v24

    move-object/from16 v35, v20

    move-object/from16 v20, v5

    move-object/from16 v5, v35

    move/from16 v36, v22

    move/from16 v22, v7

    move/from16 v7, v36

    move/from16 v37, v23

    move-object/from16 v23, v8

    move/from16 v8, v37

    .line 515
    .end local v24    # "itemInfo":Landroid/content/pm/PackageItemInfo;
    .local v4, "itemInfo":Landroid/content/pm/PackageItemInfo;
    .local v5, "appInfo":Landroid/content/pm/ApplicationInfo;
    .local v7, "isDisabled":Z
    .local v8, "isComponentDisabled":Z
    .local v20, "pm":Landroid/content/pm/PackageManager;
    .local v22, "queryFlag":I
    .local v23, "activityExecutableList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .local v25, "info":Landroid/content/pm/ResolveInfo;
    :goto_3
    if-nez v7, :cond_16

    if-eqz v8, :cond_4

    move-object/from16 v27, v4

    move-object/from16 v33, v5

    move-object/from16 v28, v9

    move-object/from16 v24, v10

    move-object/from16 v26, v11

    move/from16 v31, v12

    move-object/from16 v29, v13

    goto/16 :goto_12

    .line 521
    :cond_4
    new-instance v0, Landroid/content/ComponentName;

    move-object/from16 v24, v10

    .end local v10    # "receiverExecutableList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .local v24, "receiverExecutableList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v10, v4, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v26, v11

    .end local v11    # "serviceExecutableList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .local v26, "serviceExecutableList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v11, v4, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v10, v0

    .line 524
    .end local v21    # "cName":Landroid/content/ComponentName;
    .local v10, "cName":Landroid/content/ComponentName;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v5, v0, v9}, Landroid/content/pm/ApplicationInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 525
    .local v0, "xml":Landroid/content/res/XmlResourceParser;
    if-nez v0, :cond_5

    .line 526
    move-object/from16 v28, v9

    move/from16 v31, v12

    move-object/from16 v29, v13

    goto/16 :goto_13

    .line 528
    :cond_5
    const/16 v18, 0x0

    .line 529
    const/4 v11, 0x0

    .line 530
    .local v11, "startedExecutable":Z
    const/16 v21, 0x0

    .line 531
    .local v21, "startedCommand":Z
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v27
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_27
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_26
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_25
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_24

    move/from16 v35, v27

    move-object/from16 v27, v4

    move/from16 v4, v35

    .line 532
    .local v4, "tagType":I
    .local v27, "itemInfo":Landroid/content/pm/PackageItemInfo;
    :goto_4
    move-object/from16 v28, v9

    const/4 v9, 0x1

    if-eq v4, v9, :cond_15

    .line 533
    :try_start_1
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v17
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_23
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_22
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_21
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_20

    move-object/from16 v29, v17

    .line 534
    .local v29, "elementName":Ljava/lang/String;
    const-string v9, "command"

    move/from16 v30, v11

    .end local v11    # "startedExecutable":Z
    .local v30, "startedExecutable":Z
    const-string v11, "executable"

    move/from16 v31, v12

    const/4 v12, 0x2

    if-ne v4, v12, :cond_c

    .line 535
    move-object/from16 v12, v29

    .end local v29    # "elementName":Ljava/lang/String;
    .local v12, "elementName":Ljava/lang/String;
    :try_start_2
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 536
    const/4 v11, 0x1

    .end local v30    # "startedExecutable":Z
    .restart local v11    # "startedExecutable":Z
    goto :goto_5

    .line 535
    .end local v11    # "startedExecutable":Z
    .restart local v30    # "startedExecutable":Z
    :cond_6
    move/from16 v11, v30

    .line 538
    .end local v30    # "startedExecutable":Z
    .restart local v11    # "startedExecutable":Z
    :goto_5
    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_13
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_12
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_11
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_10

    if-eqz v9, :cond_8

    .line 539
    if-eqz v11, :cond_7

    .line 542
    const/16 v21, 0x1

    .line 543
    :try_start_3
    invoke-static {v0}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v9

    .line 544
    .local v9, "attr":Landroid/util/AttributeSet;
    invoke-static {v1, v9, v10}, Lcom/samsung/android/app/SemExecutableInfo;->getActivityMetaData(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/content/ComponentName;)Lcom/samsung/android/app/SemExecutableInfo;

    move-result-object v29
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-object/from16 v18, v29

    move-object/from16 v29, v13

    move-object/from16 v9, v18

    goto :goto_6

    .line 600
    .end local v0    # "xml":Landroid/content/res/XmlResourceParser;
    .end local v4    # "tagType":I
    .end local v9    # "attr":Landroid/util/AttributeSet;
    .end local v11    # "startedExecutable":Z
    .end local v12    # "elementName":Ljava/lang/String;
    .end local v21    # "startedCommand":Z
    :catch_0
    move-exception v0

    move-object/from16 v33, v5

    move-object/from16 v29, v13

    goto/16 :goto_c

    .line 598
    :catch_1
    move-exception v0

    move-object/from16 v33, v5

    move-object/from16 v29, v13

    goto/16 :goto_d

    .line 596
    :catch_2
    move-exception v0

    move-object/from16 v33, v5

    move-object/from16 v29, v13

    goto/16 :goto_e

    .line 594
    :catch_3
    move-exception v0

    move-object/from16 v33, v5

    move-object/from16 v29, v13

    goto/16 :goto_f

    .line 540
    .restart local v0    # "xml":Landroid/content/res/XmlResourceParser;
    .restart local v4    # "tagType":I
    .restart local v11    # "startedExecutable":Z
    .restart local v12    # "elementName":Ljava/lang/String;
    .restart local v21    # "startedCommand":Z
    :cond_7
    :try_start_4
    new-instance v9, Lorg/xmlpull/v1/XmlPullParserException;
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_13
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_12
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_11
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_10

    move-object/from16 v29, v13

    .end local v13    # "executableListArray":[Ljava/util/List;
    .local v29, "executableListArray":[Ljava/util/List;
    :try_start_5
    const-string v13, "executable element wasn\'t started"

    invoke-direct {v9, v13}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .end local v5    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v6    # "newSemExecutableInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/SemExecutableInfo;>;"
    .end local v7    # "isDisabled":Z
    .end local v8    # "isComponentDisabled":Z
    .end local v10    # "cName":Landroid/content/ComponentName;
    .end local v16    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v18    # "lastSemExecutableInfo":Lcom/samsung/android/app/SemExecutableInfo;
    .end local v19    # "ACTION_EXECUTABLE":Ljava/lang/String;
    .end local v20    # "pm":Landroid/content/pm/PackageManager;
    .end local v22    # "queryFlag":I
    .end local v23    # "activityExecutableList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v24    # "receiverExecutableList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v25    # "info":Landroid/content/pm/ResolveInfo;
    .end local v26    # "serviceExecutableList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v27    # "itemInfo":Landroid/content/pm/PackageItemInfo;
    .end local v29    # "executableListArray":[Ljava/util/List;
    .end local p0    # "context":Landroid/content/Context;
    throw v9
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 600
    .end local v0    # "xml":Landroid/content/res/XmlResourceParser;
    .end local v4    # "tagType":I
    .end local v11    # "startedExecutable":Z
    .end local v12    # "elementName":Ljava/lang/String;
    .end local v21    # "startedCommand":Z
    .restart local v5    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v6    # "newSemExecutableInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/SemExecutableInfo;>;"
    .restart local v7    # "isDisabled":Z
    .restart local v8    # "isComponentDisabled":Z
    .restart local v10    # "cName":Landroid/content/ComponentName;
    .restart local v16    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v18    # "lastSemExecutableInfo":Lcom/samsung/android/app/SemExecutableInfo;
    .restart local v19    # "ACTION_EXECUTABLE":Ljava/lang/String;
    .restart local v20    # "pm":Landroid/content/pm/PackageManager;
    .restart local v22    # "queryFlag":I
    .restart local v23    # "activityExecutableList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v24    # "receiverExecutableList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v25    # "info":Landroid/content/pm/ResolveInfo;
    .restart local v26    # "serviceExecutableList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v27    # "itemInfo":Landroid/content/pm/PackageItemInfo;
    .restart local v29    # "executableListArray":[Ljava/util/List;
    .restart local p0    # "context":Landroid/content/Context;
    :catch_4
    move-exception v0

    move-object/from16 v33, v5

    goto/16 :goto_c

    .line 598
    :catch_5
    move-exception v0

    move-object/from16 v33, v5

    goto/16 :goto_d

    .line 596
    :catch_6
    move-exception v0

    move-object/from16 v33, v5

    goto/16 :goto_e

    .line 594
    :catch_7
    move-exception v0

    move-object/from16 v33, v5

    goto/16 :goto_f

    .line 538
    .end local v29    # "executableListArray":[Ljava/util/List;
    .restart local v0    # "xml":Landroid/content/res/XmlResourceParser;
    .restart local v4    # "tagType":I
    .restart local v11    # "startedExecutable":Z
    .restart local v12    # "elementName":Ljava/lang/String;
    .restart local v13    # "executableListArray":[Ljava/util/List;
    .restart local v21    # "startedCommand":Z
    :cond_8
    move-object/from16 v29, v13

    .end local v13    # "executableListArray":[Ljava/util/List;
    .restart local v29    # "executableListArray":[Ljava/util/List;
    move-object/from16 v9, v18

    .line 546
    .end local v18    # "lastSemExecutableInfo":Lcom/samsung/android/app/SemExecutableInfo;
    .local v9, "lastSemExecutableInfo":Lcom/samsung/android/app/SemExecutableInfo;
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

    .line 547
    if-eqz v11, :cond_a

    if-eqz v21, :cond_a

    .line 550
    :try_start_7
    invoke-static {v0}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v13

    .line 551
    .local v13, "attr":Landroid/util/AttributeSet;
    if-eqz v9, :cond_9

    .line 552
    invoke-direct {v9, v1, v13}, Lcom/samsung/android/app/SemExecutableInfo;->addExtraAttribute(Landroid/content/Context;Landroid/util/AttributeSet;)V
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_a
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_9
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_8

    .line 554
    .end local v13    # "attr":Landroid/util/AttributeSet;
    :cond_9
    move-object/from16 v18, v9

    goto :goto_7

    .line 600
    .end local v0    # "xml":Landroid/content/res/XmlResourceParser;
    .end local v4    # "tagType":I
    .end local v11    # "startedExecutable":Z
    .end local v12    # "elementName":Ljava/lang/String;
    .end local v21    # "startedCommand":Z
    :catch_8
    move-exception v0

    move-object/from16 v33, v5

    move-object/from16 v18, v9

    goto/16 :goto_c

    .line 598
    :catch_9
    move-exception v0

    move-object/from16 v33, v5

    move-object/from16 v18, v9

    goto/16 :goto_d

    .line 596
    :catch_a
    move-exception v0

    move-object/from16 v33, v5

    move-object/from16 v18, v9

    goto/16 :goto_e

    .line 594
    :catch_b
    move-exception v0

    move-object/from16 v33, v5

    move-object/from16 v18, v9

    goto/16 :goto_f

    .line 548
    .restart local v0    # "xml":Landroid/content/res/XmlResourceParser;
    .restart local v4    # "tagType":I
    .restart local v11    # "startedExecutable":Z
    .restart local v12    # "elementName":Ljava/lang/String;
    .restart local v21    # "startedCommand":Z
    :cond_a
    :try_start_8
    new-instance v13, Lorg/xmlpull/v1/XmlPullParserException;
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_e
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_c

    move-object/from16 v18, v9

    .end local v9    # "lastSemExecutableInfo":Lcom/samsung/android/app/SemExecutableInfo;
    .restart local v18    # "lastSemExecutableInfo":Lcom/samsung/android/app/SemExecutableInfo;
    :try_start_9
    const-string v9, "executable or command element wasn\'t started"

    invoke-direct {v13, v9}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .end local v5    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v6    # "newSemExecutableInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/SemExecutableInfo;>;"
    .end local v7    # "isDisabled":Z
    .end local v8    # "isComponentDisabled":Z
    .end local v10    # "cName":Landroid/content/ComponentName;
    .end local v16    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v18    # "lastSemExecutableInfo":Lcom/samsung/android/app/SemExecutableInfo;
    .end local v19    # "ACTION_EXECUTABLE":Ljava/lang/String;
    .end local v20    # "pm":Landroid/content/pm/PackageManager;
    .end local v22    # "queryFlag":I
    .end local v23    # "activityExecutableList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v24    # "receiverExecutableList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v25    # "info":Landroid/content/pm/ResolveInfo;
    .end local v26    # "serviceExecutableList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v27    # "itemInfo":Landroid/content/pm/PackageItemInfo;
    .end local v29    # "executableListArray":[Ljava/util/List;
    .end local p0    # "context":Landroid/content/Context;
    throw v13
    :try_end_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_9} :catch_7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_9} :catch_6
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    .line 546
    .restart local v5    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v6    # "newSemExecutableInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/SemExecutableInfo;>;"
    .restart local v7    # "isDisabled":Z
    .restart local v8    # "isComponentDisabled":Z
    .restart local v9    # "lastSemExecutableInfo":Lcom/samsung/android/app/SemExecutableInfo;
    .restart local v10    # "cName":Landroid/content/ComponentName;
    .restart local v16    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v19    # "ACTION_EXECUTABLE":Ljava/lang/String;
    .restart local v20    # "pm":Landroid/content/pm/PackageManager;
    .restart local v22    # "queryFlag":I
    .restart local v23    # "activityExecutableList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v24    # "receiverExecutableList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v25    # "info":Landroid/content/pm/ResolveInfo;
    .restart local v26    # "serviceExecutableList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v27    # "itemInfo":Landroid/content/pm/PackageItemInfo;
    .restart local v29    # "executableListArray":[Ljava/util/List;
    .restart local p0    # "context":Landroid/content/Context;
    :cond_b
    move-object/from16 v18, v9

    .line 592
    .end local v9    # "lastSemExecutableInfo":Lcom/samsung/android/app/SemExecutableInfo;
    .restart local v18    # "lastSemExecutableInfo":Lcom/samsung/android/app/SemExecutableInfo;
    :goto_7
    move-object/from16 v33, v5

    move-object/from16 v1, v18

    move/from16 v18, v4

    goto/16 :goto_b

    .line 600
    .end local v0    # "xml":Landroid/content/res/XmlResourceParser;
    .end local v4    # "tagType":I
    .end local v11    # "startedExecutable":Z
    .end local v12    # "elementName":Ljava/lang/String;
    .end local v18    # "lastSemExecutableInfo":Lcom/samsung/android/app/SemExecutableInfo;
    .end local v21    # "startedCommand":Z
    .restart local v9    # "lastSemExecutableInfo":Lcom/samsung/android/app/SemExecutableInfo;
    :catch_c
    move-exception v0

    move-object/from16 v18, v9

    move-object/from16 v33, v5

    .end local v9    # "lastSemExecutableInfo":Lcom/samsung/android/app/SemExecutableInfo;
    .restart local v18    # "lastSemExecutableInfo":Lcom/samsung/android/app/SemExecutableInfo;
    goto/16 :goto_c

    .line 598
    .end local v18    # "lastSemExecutableInfo":Lcom/samsung/android/app/SemExecutableInfo;
    .restart local v9    # "lastSemExecutableInfo":Lcom/samsung/android/app/SemExecutableInfo;
    :catch_d
    move-exception v0

    move-object/from16 v18, v9

    move-object/from16 v33, v5

    .end local v9    # "lastSemExecutableInfo":Lcom/samsung/android/app/SemExecutableInfo;
    .restart local v18    # "lastSemExecutableInfo":Lcom/samsung/android/app/SemExecutableInfo;
    goto/16 :goto_d

    .line 596
    .end local v18    # "lastSemExecutableInfo":Lcom/samsung/android/app/SemExecutableInfo;
    .restart local v9    # "lastSemExecutableInfo":Lcom/samsung/android/app/SemExecutableInfo;
    :catch_e
    move-exception v0

    move-object/from16 v18, v9

    move-object/from16 v33, v5

    .end local v9    # "lastSemExecutableInfo":Lcom/samsung/android/app/SemExecutableInfo;
    .restart local v18    # "lastSemExecutableInfo":Lcom/samsung/android/app/SemExecutableInfo;
    goto/16 :goto_e

    .line 594
    .end local v18    # "lastSemExecutableInfo":Lcom/samsung/android/app/SemExecutableInfo;
    .restart local v9    # "lastSemExecutableInfo":Lcom/samsung/android/app/SemExecutableInfo;
    :catch_f
    move-exception v0

    move-object/from16 v18, v9

    move-object/from16 v33, v5

    .end local v9    # "lastSemExecutableInfo":Lcom/samsung/android/app/SemExecutableInfo;
    .restart local v18    # "lastSemExecutableInfo":Lcom/samsung/android/app/SemExecutableInfo;
    goto/16 :goto_f

    .line 600
    .end local v29    # "executableListArray":[Ljava/util/List;
    .local v13, "executableListArray":[Ljava/util/List;
    :catch_10
    move-exception v0

    move-object/from16 v29, v13

    move-object/from16 v33, v5

    .end local v13    # "executableListArray":[Ljava/util/List;
    .restart local v29    # "executableListArray":[Ljava/util/List;
    goto/16 :goto_c

    .line 598
    .end local v29    # "executableListArray":[Ljava/util/List;
    .restart local v13    # "executableListArray":[Ljava/util/List;
    :catch_11
    move-exception v0

    move-object/from16 v29, v13

    move-object/from16 v33, v5

    .end local v13    # "executableListArray":[Ljava/util/List;
    .restart local v29    # "executableListArray":[Ljava/util/List;
    goto/16 :goto_d

    .line 596
    .end local v29    # "executableListArray":[Ljava/util/List;
    .restart local v13    # "executableListArray":[Ljava/util/List;
    :catch_12
    move-exception v0

    move-object/from16 v29, v13

    move-object/from16 v33, v5

    .end local v13    # "executableListArray":[Ljava/util/List;
    .restart local v29    # "executableListArray":[Ljava/util/List;
    goto/16 :goto_e

    .line 594
    .end local v29    # "executableListArray":[Ljava/util/List;
    .restart local v13    # "executableListArray":[Ljava/util/List;
    :catch_13
    move-exception v0

    move-object/from16 v29, v13

    move-object/from16 v33, v5

    .end local v13    # "executableListArray":[Ljava/util/List;
    .restart local v29    # "executableListArray":[Ljava/util/List;
    goto/16 :goto_f

    .line 555
    .restart local v0    # "xml":Landroid/content/res/XmlResourceParser;
    .restart local v4    # "tagType":I
    .restart local v13    # "executableListArray":[Ljava/util/List;
    .restart local v21    # "startedCommand":Z
    .local v29, "elementName":Ljava/lang/String;
    .restart local v30    # "startedExecutable":Z
    :cond_c
    move-object/from16 v12, v29

    move-object/from16 v29, v13

    .end local v13    # "executableListArray":[Ljava/util/List;
    .restart local v12    # "elementName":Ljava/lang/String;
    .local v29, "executableListArray":[Ljava/util/List;
    const/4 v13, 0x3

    if-ne v4, v13, :cond_14

    .line 556
    :try_start_a
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d

    .line 557
    const/4 v11, 0x0

    .end local v30    # "startedExecutable":Z
    .restart local v11    # "startedExecutable":Z
    goto :goto_8

    .line 556
    .end local v11    # "startedExecutable":Z
    .restart local v30    # "startedExecutable":Z
    :cond_d
    move/from16 v11, v30

    .line 559
    .end local v30    # "startedExecutable":Z
    .restart local v11    # "startedExecutable":Z
    :goto_8
    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_13

    .line 560
    const/16 v21, 0x0

    .line 562
    invoke-static/range {v18 .. v18}, Lcom/samsung/android/app/SemExecutableInfo;->checkValidate(Lcom/samsung/android/app/SemExecutableInfo;)Z

    move-result v9

    if-eqz v9, :cond_11

    .line 564
    invoke-static {}, Lcom/samsung/android/app/SemExecutableWhitelist;->getInstance()Lcom/samsung/android/app/SemExecutableWhitelist;

    move-result-object v9

    .line 565
    .local v9, "whiteList":Lcom/samsung/android/app/SemExecutableWhitelist;
    iget-object v13, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v1, v13}, Lcom/samsung/android/app/SemExecutableWhitelist;->isAllowedToUseOrder(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v13
    :try_end_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_a} :catch_1b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_a} :catch_1a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_19
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_18

    .line 566
    .local v13, "bSamsungApps":Z
    move-object/from16 v1, v18

    .end local v18    # "lastSemExecutableInfo":Lcom/samsung/android/app/SemExecutableInfo;
    .local v1, "lastSemExecutableInfo":Lcom/samsung/android/app/SemExecutableInfo;
    :try_start_b
    invoke-static {v1, v13}, Lcom/samsung/android/app/SemExecutableInfo;->examineOrderInCategory(Lcom/samsung/android/app/SemExecutableInfo;Z)V

    .line 568
    if-nez v1, :cond_e

    .line 569
    move-object/from16 v18, v1

    move-object/from16 v9, v28

    move-object/from16 v13, v29

    move/from16 v12, v31

    move-object/from16 v1, p0

    goto/16 :goto_4

    .line 572
    :cond_e
    move/from16 v18, v4

    .end local v4    # "tagType":I
    .local v18, "tagType":I
    iget-object v4, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {v1, v4}, Lcom/samsung/android/app/SemExecutableInfo;->setId(Ljava/lang/String;)V

    .line 575
    const/4 v4, 0x0

    .line 577
    .local v4, "bDuplicatedID":Z
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v30

    :goto_9
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_10

    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/samsung/android/app/SemExecutableInfo;
    :try_end_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_b} :catch_17
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b .. :try_end_b} :catch_16
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_15
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_14

    .line 578
    .local v32, "checkInfo":Lcom/samsung/android/app/SemExecutableInfo;
    move-object/from16 v33, v5

    .end local v5    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .local v33, "appInfo":Landroid/content/pm/ApplicationInfo;
    :try_start_c
    invoke-virtual/range {v32 .. v32}, Lcom/samsung/android/app/SemExecutableInfo;->getId()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v34, v9

    .end local v9    # "whiteList":Lcom/samsung/android/app/SemExecutableWhitelist;
    .local v34, "whiteList":Lcom/samsung/android/app/SemExecutableWhitelist;
    invoke-virtual {v1}, Lcom/samsung/android/app/SemExecutableInfo;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 579
    const/4 v4, 0x1

    .line 581
    .end local v32    # "checkInfo":Lcom/samsung/android/app/SemExecutableInfo;
    :cond_f
    move-object/from16 v5, v33

    move-object/from16 v9, v34

    goto :goto_9

    .line 583
    .end local v33    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v34    # "whiteList":Lcom/samsung/android/app/SemExecutableWhitelist;
    .restart local v5    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v9    # "whiteList":Lcom/samsung/android/app/SemExecutableWhitelist;
    :cond_10
    move-object/from16 v33, v5

    move-object/from16 v34, v9

    .end local v5    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v9    # "whiteList":Lcom/samsung/android/app/SemExecutableWhitelist;
    .restart local v33    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v34    # "whiteList":Lcom/samsung/android/app/SemExecutableWhitelist;
    if-nez v4, :cond_12

    .line 585
    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 600
    .end local v0    # "xml":Landroid/content/res/XmlResourceParser;
    .end local v4    # "bDuplicatedID":Z
    .end local v11    # "startedExecutable":Z
    .end local v12    # "elementName":Ljava/lang/String;
    .end local v13    # "bSamsungApps":Z
    .end local v18    # "tagType":I
    .end local v21    # "startedCommand":Z
    .end local v33    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v34    # "whiteList":Lcom/samsung/android/app/SemExecutableWhitelist;
    .restart local v5    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_14
    move-exception v0

    move-object/from16 v33, v5

    move-object/from16 v18, v1

    .end local v5    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v33    # "appInfo":Landroid/content/pm/ApplicationInfo;
    goto/16 :goto_c

    .line 598
    .end local v33    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v5    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_15
    move-exception v0

    move-object/from16 v33, v5

    move-object/from16 v18, v1

    .end local v5    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v33    # "appInfo":Landroid/content/pm/ApplicationInfo;
    goto/16 :goto_d

    .line 596
    .end local v33    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v5    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_16
    move-exception v0

    move-object/from16 v33, v5

    move-object/from16 v18, v1

    .end local v5    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v33    # "appInfo":Landroid/content/pm/ApplicationInfo;
    goto/16 :goto_e

    .line 594
    .end local v33    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v5    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_17
    move-exception v0

    move-object/from16 v33, v5

    move-object/from16 v18, v1

    .end local v5    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v33    # "appInfo":Landroid/content/pm/ApplicationInfo;
    goto/16 :goto_f

    .line 562
    .end local v1    # "lastSemExecutableInfo":Lcom/samsung/android/app/SemExecutableInfo;
    .end local v33    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v0    # "xml":Landroid/content/res/XmlResourceParser;
    .local v4, "tagType":I
    .restart local v5    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v11    # "startedExecutable":Z
    .restart local v12    # "elementName":Ljava/lang/String;
    .local v18, "lastSemExecutableInfo":Lcom/samsung/android/app/SemExecutableInfo;
    .restart local v21    # "startedCommand":Z
    :cond_11
    move-object/from16 v33, v5

    move-object/from16 v1, v18

    move/from16 v18, v4

    .line 588
    .end local v4    # "tagType":I
    .end local v5    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v1    # "lastSemExecutableInfo":Lcom/samsung/android/app/SemExecutableInfo;
    .local v18, "tagType":I
    .restart local v33    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_12
    :goto_a
    const/4 v1, 0x0

    goto :goto_b

    .line 559
    .end local v1    # "lastSemExecutableInfo":Lcom/samsung/android/app/SemExecutableInfo;
    .end local v33    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v4    # "tagType":I
    .restart local v5    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .local v18, "lastSemExecutableInfo":Lcom/samsung/android/app/SemExecutableInfo;
    :cond_13
    move-object/from16 v33, v5

    move-object/from16 v1, v18

    move/from16 v18, v4

    .end local v4    # "tagType":I
    .end local v5    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v1    # "lastSemExecutableInfo":Lcom/samsung/android/app/SemExecutableInfo;
    .local v18, "tagType":I
    .restart local v33    # "appInfo":Landroid/content/pm/ApplicationInfo;
    goto :goto_b

    .line 600
    .end local v0    # "xml":Landroid/content/res/XmlResourceParser;
    .end local v1    # "lastSemExecutableInfo":Lcom/samsung/android/app/SemExecutableInfo;
    .end local v11    # "startedExecutable":Z
    .end local v12    # "elementName":Ljava/lang/String;
    .end local v21    # "startedCommand":Z
    .end local v33    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v5    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .local v18, "lastSemExecutableInfo":Lcom/samsung/android/app/SemExecutableInfo;
    :catch_18
    move-exception v0

    move-object/from16 v33, v5

    move-object/from16 v1, v18

    .end local v5    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v18    # "lastSemExecutableInfo":Lcom/samsung/android/app/SemExecutableInfo;
    .restart local v1    # "lastSemExecutableInfo":Lcom/samsung/android/app/SemExecutableInfo;
    .restart local v33    # "appInfo":Landroid/content/pm/ApplicationInfo;
    goto/16 :goto_c

    .line 598
    .end local v1    # "lastSemExecutableInfo":Lcom/samsung/android/app/SemExecutableInfo;
    .end local v33    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v5    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v18    # "lastSemExecutableInfo":Lcom/samsung/android/app/SemExecutableInfo;
    :catch_19
    move-exception v0

    move-object/from16 v33, v5

    move-object/from16 v1, v18

    .end local v5    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v18    # "lastSemExecutableInfo":Lcom/samsung/android/app/SemExecutableInfo;
    .restart local v1    # "lastSemExecutableInfo":Lcom/samsung/android/app/SemExecutableInfo;
    .restart local v33    # "appInfo":Landroid/content/pm/ApplicationInfo;
    goto/16 :goto_d

    .line 596
    .end local v1    # "lastSemExecutableInfo":Lcom/samsung/android/app/SemExecutableInfo;
    .end local v33    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v5    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v18    # "lastSemExecutableInfo":Lcom/samsung/android/app/SemExecutableInfo;
    :catch_1a
    move-exception v0

    move-object/from16 v33, v5

    move-object/from16 v1, v18

    .end local v5    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v18    # "lastSemExecutableInfo":Lcom/samsung/android/app/SemExecutableInfo;
    .restart local v1    # "lastSemExecutableInfo":Lcom/samsung/android/app/SemExecutableInfo;
    .restart local v33    # "appInfo":Landroid/content/pm/ApplicationInfo;
    goto/16 :goto_e

    .line 594
    .end local v1    # "lastSemExecutableInfo":Lcom/samsung/android/app/SemExecutableInfo;
    .end local v33    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v5    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v18    # "lastSemExecutableInfo":Lcom/samsung/android/app/SemExecutableInfo;
    :catch_1b
    move-exception v0

    move-object/from16 v33, v5

    move-object/from16 v1, v18

    .end local v5    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v18    # "lastSemExecutableInfo":Lcom/samsung/android/app/SemExecutableInfo;
    .restart local v1    # "lastSemExecutableInfo":Lcom/samsung/android/app/SemExecutableInfo;
    .restart local v33    # "appInfo":Landroid/content/pm/ApplicationInfo;
    goto/16 :goto_f

    .line 555
    .end local v1    # "lastSemExecutableInfo":Lcom/samsung/android/app/SemExecutableInfo;
    .end local v33    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v0    # "xml":Landroid/content/res/XmlResourceParser;
    .restart local v4    # "tagType":I
    .restart local v5    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v12    # "elementName":Ljava/lang/String;
    .restart local v18    # "lastSemExecutableInfo":Lcom/samsung/android/app/SemExecutableInfo;
    .restart local v21    # "startedCommand":Z
    .restart local v30    # "startedExecutable":Z
    :cond_14
    move-object/from16 v33, v5

    move-object/from16 v1, v18

    move/from16 v18, v4

    .end local v4    # "tagType":I
    .end local v5    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v1    # "lastSemExecutableInfo":Lcom/samsung/android/app/SemExecutableInfo;
    .local v18, "tagType":I
    .restart local v33    # "appInfo":Landroid/content/pm/ApplicationInfo;
    move/from16 v11, v30

    .line 592
    .end local v30    # "startedExecutable":Z
    .restart local v11    # "startedExecutable":Z
    :goto_b
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v4
    :try_end_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_c} :catch_1f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c .. :try_end_c} :catch_1e
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1d
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1c

    .line 593
    .end local v12    # "elementName":Ljava/lang/String;
    .end local v18    # "tagType":I
    .restart local v4    # "tagType":I
    move-object/from16 v18, v1

    move-object/from16 v9, v28

    move-object/from16 v13, v29

    move/from16 v12, v31

    move-object/from16 v5, v33

    move-object/from16 v1, p0

    goto/16 :goto_4

    .line 600
    .end local v0    # "xml":Landroid/content/res/XmlResourceParser;
    .end local v4    # "tagType":I
    .end local v11    # "startedExecutable":Z
    .end local v21    # "startedCommand":Z
    :catch_1c
    move-exception v0

    move-object/from16 v18, v1

    goto/16 :goto_c

    .line 598
    :catch_1d
    move-exception v0

    move-object/from16 v18, v1

    goto/16 :goto_d

    .line 596
    :catch_1e
    move-exception v0

    move-object/from16 v18, v1

    goto/16 :goto_e

    .line 594
    :catch_1f
    move-exception v0

    move-object/from16 v18, v1

    goto/16 :goto_f

    .line 600
    .end local v1    # "lastSemExecutableInfo":Lcom/samsung/android/app/SemExecutableInfo;
    .end local v29    # "executableListArray":[Ljava/util/List;
    .end local v33    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v5    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .local v13, "executableListArray":[Ljava/util/List;
    .local v18, "lastSemExecutableInfo":Lcom/samsung/android/app/SemExecutableInfo;
    :catch_20
    move-exception v0

    move-object/from16 v33, v5

    move/from16 v31, v12

    move-object/from16 v29, v13

    move-object/from16 v1, v18

    .end local v5    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v13    # "executableListArray":[Ljava/util/List;
    .end local v18    # "lastSemExecutableInfo":Lcom/samsung/android/app/SemExecutableInfo;
    .restart local v1    # "lastSemExecutableInfo":Lcom/samsung/android/app/SemExecutableInfo;
    .restart local v29    # "executableListArray":[Ljava/util/List;
    .restart local v33    # "appInfo":Landroid/content/pm/ApplicationInfo;
    goto :goto_c

    .line 598
    .end local v1    # "lastSemExecutableInfo":Lcom/samsung/android/app/SemExecutableInfo;
    .end local v29    # "executableListArray":[Ljava/util/List;
    .end local v33    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v5    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v13    # "executableListArray":[Ljava/util/List;
    .restart local v18    # "lastSemExecutableInfo":Lcom/samsung/android/app/SemExecutableInfo;
    :catch_21
    move-exception v0

    move-object/from16 v33, v5

    move/from16 v31, v12

    move-object/from16 v29, v13

    move-object/from16 v1, v18

    .end local v5    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v13    # "executableListArray":[Ljava/util/List;
    .end local v18    # "lastSemExecutableInfo":Lcom/samsung/android/app/SemExecutableInfo;
    .restart local v1    # "lastSemExecutableInfo":Lcom/samsung/android/app/SemExecutableInfo;
    .restart local v29    # "executableListArray":[Ljava/util/List;
    .restart local v33    # "appInfo":Landroid/content/pm/ApplicationInfo;
    goto :goto_d

    .line 596
    .end local v1    # "lastSemExecutableInfo":Lcom/samsung/android/app/SemExecutableInfo;
    .end local v29    # "executableListArray":[Ljava/util/List;
    .end local v33    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v5    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v13    # "executableListArray":[Ljava/util/List;
    .restart local v18    # "lastSemExecutableInfo":Lcom/samsung/android/app/SemExecutableInfo;
    :catch_22
    move-exception v0

    move-object/from16 v33, v5

    move/from16 v31, v12

    move-object/from16 v29, v13

    move-object/from16 v1, v18

    .end local v5    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v13    # "executableListArray":[Ljava/util/List;
    .end local v18    # "lastSemExecutableInfo":Lcom/samsung/android/app/SemExecutableInfo;
    .restart local v1    # "lastSemExecutableInfo":Lcom/samsung/android/app/SemExecutableInfo;
    .restart local v29    # "executableListArray":[Ljava/util/List;
    .restart local v33    # "appInfo":Landroid/content/pm/ApplicationInfo;
    goto :goto_e

    .line 594
    .end local v1    # "lastSemExecutableInfo":Lcom/samsung/android/app/SemExecutableInfo;
    .end local v29    # "executableListArray":[Ljava/util/List;
    .end local v33    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v5    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v13    # "executableListArray":[Ljava/util/List;
    .restart local v18    # "lastSemExecutableInfo":Lcom/samsung/android/app/SemExecutableInfo;
    :catch_23
    move-exception v0

    move-object/from16 v33, v5

    move/from16 v31, v12

    move-object/from16 v29, v13

    move-object/from16 v1, v18

    .end local v5    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v13    # "executableListArray":[Ljava/util/List;
    .end local v18    # "lastSemExecutableInfo":Lcom/samsung/android/app/SemExecutableInfo;
    .restart local v1    # "lastSemExecutableInfo":Lcom/samsung/android/app/SemExecutableInfo;
    .restart local v29    # "executableListArray":[Ljava/util/List;
    .restart local v33    # "appInfo":Landroid/content/pm/ApplicationInfo;
    goto/16 :goto_f

    .line 532
    .end local v1    # "lastSemExecutableInfo":Lcom/samsung/android/app/SemExecutableInfo;
    .end local v29    # "executableListArray":[Ljava/util/List;
    .end local v33    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v0    # "xml":Landroid/content/res/XmlResourceParser;
    .restart local v4    # "tagType":I
    .restart local v5    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v11    # "startedExecutable":Z
    .restart local v13    # "executableListArray":[Ljava/util/List;
    .restart local v18    # "lastSemExecutableInfo":Lcom/samsung/android/app/SemExecutableInfo;
    .restart local v21    # "startedCommand":Z
    :cond_15
    move-object/from16 v33, v5

    move/from16 v30, v11

    move/from16 v31, v12

    move-object/from16 v29, v13

    move-object/from16 v1, v18

    move/from16 v18, v4

    .line 602
    .end local v0    # "xml":Landroid/content/res/XmlResourceParser;
    .end local v4    # "tagType":I
    .end local v5    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v11    # "startedExecutable":Z
    .end local v13    # "executableListArray":[Ljava/util/List;
    .end local v18    # "lastSemExecutableInfo":Lcom/samsung/android/app/SemExecutableInfo;
    .end local v21    # "startedCommand":Z
    .restart local v1    # "lastSemExecutableInfo":Lcom/samsung/android/app/SemExecutableInfo;
    .restart local v29    # "executableListArray":[Ljava/util/List;
    .restart local v33    # "appInfo":Landroid/content/pm/ApplicationInfo;
    move-object/from16 v18, v1

    goto/16 :goto_11

    .line 600
    .end local v1    # "lastSemExecutableInfo":Lcom/samsung/android/app/SemExecutableInfo;
    .end local v27    # "itemInfo":Landroid/content/pm/PackageItemInfo;
    .end local v29    # "executableListArray":[Ljava/util/List;
    .end local v33    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .local v4, "itemInfo":Landroid/content/pm/PackageItemInfo;
    .restart local v5    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v13    # "executableListArray":[Ljava/util/List;
    .restart local v18    # "lastSemExecutableInfo":Lcom/samsung/android/app/SemExecutableInfo;
    :catch_24
    move-exception v0

    move-object/from16 v27, v4

    move-object/from16 v33, v5

    move-object/from16 v28, v9

    move/from16 v31, v12

    move-object/from16 v29, v13

    .line 601
    .end local v4    # "itemInfo":Landroid/content/pm/PackageItemInfo;
    .end local v5    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v13    # "executableListArray":[Ljava/util/List;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v27    # "itemInfo":Landroid/content/pm/PackageItemInfo;
    .restart local v29    # "executableListArray":[Ljava/util/List;
    .restart local v33    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :goto_c
    const-string v1, "Unknown Exception while Reading SemExecutableInfo metadata"

    invoke-static {v3, v1, v0}, Lcom/samsung/android/util/SemLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_11

    .line 598
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v27    # "itemInfo":Landroid/content/pm/PackageItemInfo;
    .end local v29    # "executableListArray":[Ljava/util/List;
    .end local v33    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v4    # "itemInfo":Landroid/content/pm/PackageItemInfo;
    .restart local v5    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v13    # "executableListArray":[Ljava/util/List;
    :catch_25
    move-exception v0

    move-object/from16 v27, v4

    move-object/from16 v33, v5

    move-object/from16 v28, v9

    move/from16 v31, v12

    move-object/from16 v29, v13

    .line 599
    .end local v4    # "itemInfo":Landroid/content/pm/PackageItemInfo;
    .end local v5    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v13    # "executableListArray":[Ljava/util/List;
    .local v0, "e":Ljava/io/IOException;
    .restart local v27    # "itemInfo":Landroid/content/pm/PackageItemInfo;
    .restart local v29    # "executableListArray":[Ljava/util/List;
    .restart local v33    # "appInfo":Landroid/content/pm/ApplicationInfo;
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

    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_10

    .line 596
    .end local v27    # "itemInfo":Landroid/content/pm/PackageItemInfo;
    .end local v29    # "executableListArray":[Ljava/util/List;
    .end local v33    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v4    # "itemInfo":Landroid/content/pm/PackageItemInfo;
    .restart local v5    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v13    # "executableListArray":[Ljava/util/List;
    :catch_26
    move-exception v0

    move-object/from16 v27, v4

    move-object/from16 v33, v5

    move-object/from16 v28, v9

    move/from16 v31, v12

    move-object/from16 v29, v13

    .line 597
    .end local v4    # "itemInfo":Landroid/content/pm/PackageItemInfo;
    .end local v5    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v13    # "executableListArray":[Ljava/util/List;
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v27    # "itemInfo":Landroid/content/pm/PackageItemInfo;
    .restart local v29    # "executableListArray":[Ljava/util/List;
    .restart local v33    # "appInfo":Landroid/content/pm/ApplicationInfo;
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

    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    goto :goto_10

    .line 594
    .end local v27    # "itemInfo":Landroid/content/pm/PackageItemInfo;
    .end local v29    # "executableListArray":[Ljava/util/List;
    .end local v33    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v4    # "itemInfo":Landroid/content/pm/PackageItemInfo;
    .restart local v5    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v13    # "executableListArray":[Ljava/util/List;
    :catch_27
    move-exception v0

    move-object/from16 v27, v4

    move-object/from16 v33, v5

    move-object/from16 v28, v9

    move/from16 v31, v12

    move-object/from16 v29, v13

    .line 595
    .end local v4    # "itemInfo":Landroid/content/pm/PackageItemInfo;
    .end local v5    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v13    # "executableListArray":[Ljava/util/List;
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    .restart local v27    # "itemInfo":Landroid/content/pm/PackageItemInfo;
    .restart local v29    # "executableListArray":[Ljava/util/List;
    .restart local v33    # "appInfo":Landroid/content/pm/ApplicationInfo;
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

    .line 602
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_10
    nop

    .line 603
    .end local v7    # "isDisabled":Z
    .end local v8    # "isComponentDisabled":Z
    .end local v10    # "cName":Landroid/content/ComponentName;
    .end local v25    # "info":Landroid/content/pm/ResolveInfo;
    .end local v27    # "itemInfo":Landroid/content/pm/PackageItemInfo;
    .end local v33    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :goto_11
    move-object/from16 v1, p0

    move-object/from16 v4, v19

    move-object/from16 v5, v20

    move/from16 v7, v22

    move-object/from16 v8, v23

    move-object/from16 v10, v24

    move-object/from16 v11, v26

    move-object/from16 v9, v28

    move-object/from16 v13, v29

    move/from16 v12, v31

    goto/16 :goto_2

    .line 515
    .end local v24    # "receiverExecutableList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v26    # "serviceExecutableList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v29    # "executableListArray":[Ljava/util/List;
    .restart local v4    # "itemInfo":Landroid/content/pm/PackageItemInfo;
    .restart local v5    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v7    # "isDisabled":Z
    .restart local v8    # "isComponentDisabled":Z
    .local v10, "receiverExecutableList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .local v11, "serviceExecutableList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v13    # "executableListArray":[Ljava/util/List;
    .local v21, "cName":Landroid/content/ComponentName;
    .restart local v25    # "info":Landroid/content/pm/ResolveInfo;
    :cond_16
    move-object/from16 v27, v4

    move-object/from16 v33, v5

    move-object/from16 v28, v9

    move-object/from16 v24, v10

    move-object/from16 v26, v11

    move/from16 v31, v12

    move-object/from16 v29, v13

    .line 517
    .end local v4    # "itemInfo":Landroid/content/pm/PackageItemInfo;
    .end local v5    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v10    # "receiverExecutableList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v11    # "serviceExecutableList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v13    # "executableListArray":[Ljava/util/List;
    .restart local v24    # "receiverExecutableList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v26    # "serviceExecutableList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v27    # "itemInfo":Landroid/content/pm/PackageItemInfo;
    .restart local v29    # "executableListArray":[Ljava/util/List;
    .restart local v33    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :goto_12
    sget-boolean v0, Lcom/samsung/android/app/SemExecutableInfo;->DEBUG:Z

    if-eqz v0, :cond_17

    .line 518
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

    .line 495
    .end local v7    # "isDisabled":Z
    .end local v8    # "isComponentDisabled":Z
    .end local v21    # "cName":Landroid/content/ComponentName;
    .end local v25    # "info":Landroid/content/pm/ResolveInfo;
    .end local v27    # "itemInfo":Landroid/content/pm/PackageItemInfo;
    .end local v33    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_17
    :goto_13
    move-object/from16 v1, p0

    move-object/from16 v4, v19

    move-object/from16 v5, v20

    move/from16 v7, v22

    move-object/from16 v8, v23

    move-object/from16 v10, v24

    move-object/from16 v11, v26

    move-object/from16 v9, v28

    move-object/from16 v13, v29

    move/from16 v12, v31

    goto/16 :goto_2

    .end local v19    # "ACTION_EXECUTABLE":Ljava/lang/String;
    .end local v20    # "pm":Landroid/content/pm/PackageManager;
    .end local v22    # "queryFlag":I
    .end local v23    # "activityExecutableList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v24    # "receiverExecutableList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v26    # "serviceExecutableList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v29    # "executableListArray":[Ljava/util/List;
    .local v4, "ACTION_EXECUTABLE":Ljava/lang/String;
    .local v5, "pm":Landroid/content/pm/PackageManager;
    .local v7, "queryFlag":I
    .local v8, "activityExecutableList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v10    # "receiverExecutableList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v11    # "serviceExecutableList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v13    # "executableListArray":[Ljava/util/List;
    :cond_18
    move-object/from16 v19, v4

    move-object/from16 v20, v5

    move/from16 v22, v7

    move-object/from16 v23, v8

    move-object/from16 v28, v9

    move-object/from16 v24, v10

    move-object/from16 v26, v11

    move/from16 v31, v12

    move-object/from16 v29, v13

    .line 492
    .end local v4    # "ACTION_EXECUTABLE":Ljava/lang/String;
    .end local v5    # "pm":Landroid/content/pm/PackageManager;
    .end local v7    # "queryFlag":I
    .end local v8    # "activityExecutableList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v10    # "receiverExecutableList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v11    # "serviceExecutableList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v13    # "executableListArray":[Ljava/util/List;
    .end local v16    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v19    # "ACTION_EXECUTABLE":Ljava/lang/String;
    .restart local v20    # "pm":Landroid/content/pm/PackageManager;
    .restart local v22    # "queryFlag":I
    .restart local v23    # "activityExecutableList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v24    # "receiverExecutableList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v26    # "serviceExecutableList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v29    # "executableListArray":[Ljava/util/List;
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v1, p0

    move-object/from16 v0, v18

    const/4 v15, 0x1

    goto/16 :goto_0

    .line 606
    .end local v18    # "lastSemExecutableInfo":Lcom/samsung/android/app/SemExecutableInfo;
    .end local v19    # "ACTION_EXECUTABLE":Ljava/lang/String;
    .end local v20    # "pm":Landroid/content/pm/PackageManager;
    .end local v22    # "queryFlag":I
    .end local v23    # "activityExecutableList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v24    # "receiverExecutableList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v26    # "serviceExecutableList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v29    # "executableListArray":[Ljava/util/List;
    .local v0, "lastSemExecutableInfo":Lcom/samsung/android/app/SemExecutableInfo;
    .restart local v4    # "ACTION_EXECUTABLE":Ljava/lang/String;
    .restart local v5    # "pm":Landroid/content/pm/PackageManager;
    .restart local v7    # "queryFlag":I
    .restart local v8    # "activityExecutableList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v10    # "receiverExecutableList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v11    # "serviceExecutableList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v13    # "executableListArray":[Ljava/util/List;
    :cond_19
    move-object/from16 v18, v0

    move-object/from16 v19, v4

    move-object/from16 v20, v5

    move/from16 v22, v7

    move-object/from16 v23, v8

    move-object/from16 v24, v10

    move-object/from16 v26, v11

    move-object/from16 v29, v13

    .end local v0    # "lastSemExecutableInfo":Lcom/samsung/android/app/SemExecutableInfo;
    .end local v4    # "ACTION_EXECUTABLE":Ljava/lang/String;
    .end local v5    # "pm":Landroid/content/pm/PackageManager;
    .end local v7    # "queryFlag":I
    .end local v8    # "activityExecutableList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v10    # "receiverExecutableList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v11    # "serviceExecutableList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v13    # "executableListArray":[Ljava/util/List;
    .restart local v18    # "lastSemExecutableInfo":Lcom/samsung/android/app/SemExecutableInfo;
    .restart local v19    # "ACTION_EXECUTABLE":Ljava/lang/String;
    .restart local v20    # "pm":Landroid/content/pm/PackageManager;
    .restart local v22    # "queryFlag":I
    .restart local v23    # "activityExecutableList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v24    # "receiverExecutableList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v26    # "serviceExecutableList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v29    # "executableListArray":[Ljava/util/List;
    sget-boolean v0, Lcom/samsung/android/app/SemExecutableInfo;->DEBUG:Z

    if-eqz v0, :cond_1a

    .line 607
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

    .line 614
    :cond_1a
    return-object v6
.end method

.method private blacklist setId(Ljava/lang/String;)V
    .locals 8
    .param p1, "applicaitonPackageName"    # Ljava/lang/String;

    .line 186
    const-string v0, "SemExecutableInfo"

    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    .line 187
    .local v1, "builder":Landroid/net/Uri$Builder;
    const-string v2, "executable"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 189
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

    .line 190
    .local v2, "baseId":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 192
    .local v3, "id":Ljava/lang/String;
    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/app/SemExecutableInfo;->mUid:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 193
    .local v4, "lastId":J
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

    .line 194
    iget-object v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mUid:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v0

    .line 198
    .end local v4    # "lastId":J
    goto :goto_0

    .line 195
    :catch_0
    move-exception v4

    .line 196
    .local v4, "e":Ljava/lang/Exception;
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

    .line 199
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_0
    invoke-virtual {v1, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 200
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mUid:Ljava/lang/String;

    .line 201
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 854
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 826
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 827
    :cond_0
    instance-of v1, p1, Lcom/samsung/android/app/SemExecutableInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 829
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/samsung/android/app/SemExecutableInfo;

    .line 831
    .local v1, "that":Lcom/samsung/android/app/SemExecutableInfo;
    iget-boolean v3, p0, Lcom/samsung/android/app/SemExecutableInfo;->mEnabled:Z

    iget-boolean v4, v1, Lcom/samsung/android/app/SemExecutableInfo;->mEnabled:Z

    if-eq v3, v4, :cond_2

    return v2

    .line 832
    :cond_2
    iget v3, p0, Lcom/samsung/android/app/SemExecutableInfo;->mLabelId:I

    iget v4, v1, Lcom/samsung/android/app/SemExecutableInfo;->mLabelId:I

    if-eq v3, v4, :cond_3

    return v2

    .line 833
    :cond_3
    iget v3, p0, Lcom/samsung/android/app/SemExecutableInfo;->mIconId:I

    iget v4, v1, Lcom/samsung/android/app/SemExecutableInfo;->mIconId:I

    if-eq v3, v4, :cond_4

    return v2

    .line 834
    :cond_4
    iget v3, p0, Lcom/samsung/android/app/SemExecutableInfo;->mSmallIconId:I

    iget v4, v1, Lcom/samsung/android/app/SemExecutableInfo;->mSmallIconId:I

    if-eq v3, v4, :cond_5

    return v2

    .line 835
    :cond_5
    iget v3, p0, Lcom/samsung/android/app/SemExecutableInfo;->mLaunchType:I

    iget v4, v1, Lcom/samsung/android/app/SemExecutableInfo;->mLaunchType:I

    if-eq v3, v4, :cond_6

    return v2

    .line 836
    :cond_6
    iget-object v3, p0, Lcom/samsung/android/app/SemExecutableInfo;->mUid:Ljava/lang/String;

    if-eqz v3, :cond_7

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

    .line 837
    :cond_8
    iget-object v3, p0, Lcom/samsung/android/app/SemExecutableInfo;->mCategory:Ljava/lang/String;

    if-eqz v3, :cond_9

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

    .line 838
    :cond_a
    iget-object v3, p0, Lcom/samsung/android/app/SemExecutableInfo;->mAction:Ljava/lang/String;

    if-eqz v3, :cond_b

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

    .line 839
    :cond_c
    iget-object v3, p0, Lcom/samsung/android/app/SemExecutableInfo;->mPackageName:Ljava/lang/String;

    if-eqz v3, :cond_d

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

    .line 840
    :cond_e
    iget-object v3, p0, Lcom/samsung/android/app/SemExecutableInfo;->mFeatureNames:Ljava/util/List;

    if-eqz v3, :cond_f

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

    .line 841
    :cond_10
    iget-object v3, p0, Lcom/samsung/android/app/SemExecutableInfo;->mFeatureValues:Ljava/util/List;

    if-eqz v3, :cond_11

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

    .line 842
    :cond_12
    iget-object v3, p0, Lcom/samsung/android/app/SemExecutableInfo;->mBundle:Landroid/os/Bundle;

    if-eqz v3, :cond_13

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

    .line 843
    :cond_14
    iget-object v3, p0, Lcom/samsung/android/app/SemExecutableInfo;->mComponentName:Ljava/lang/String;

    if-eqz v3, :cond_15

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

    .line 844
    :cond_16
    iget-object v3, p0, Lcom/samsung/android/app/SemExecutableInfo;->mActivityLaunchMode:Ljava/lang/String;

    if-eqz v3, :cond_17

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

    .line 846
    :cond_18
    return v0
.end method

.method public whitelist getAction()Ljava/lang/String;
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mAction:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getActivityLaunchMode()I
    .locals 5

    .line 308
    const/4 v0, 0x0

    .line 309
    .local v0, "flags":I
    iget-object v1, p0, Lcom/samsung/android/app/SemExecutableInfo;->mActivityLaunchMode:Ljava/lang/String;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    .line 312
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/SemExecutableInfo;->mActivityLaunchMode:Ljava/lang/String;

    const-string v2, "\\|"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 313
    .local v1, "modes":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_4

    .line 314
    aget-object v3, v1, v2

    .line 315
    .local v3, "mode":Ljava/lang/String;
    const-string v4, "newTask"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 316
    const/high16 v4, 0x10000000

    or-int/2addr v0, v4

    goto :goto_1

    .line 317
    :cond_1
    const-string/jumbo v4, "singleTop"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 318
    const/high16 v4, 0x20000000

    or-int/2addr v0, v4

    .line 319
    :cond_2
    :goto_1
    const-string v4, "clearTop"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 320
    const/high16 v4, 0x4000000

    or-int/2addr v0, v4

    .line 313
    .end local v3    # "mode":Ljava/lang/String;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 323
    .end local v2    # "i":I
    :cond_4
    return v0

    .line 310
    .end local v1    # "modes":[Ljava/lang/String;
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

    .line 219
    iget-object v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mCategory:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mCategory:Ljava/lang/String;

    const-string v1, "\\|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 223
    .local v0, "categories":[Ljava/lang/String;
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 220
    .end local v0    # "categories":[Ljava/lang/String;
    :cond_1
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public whitelist getComponentName()Ljava/lang/String;
    .locals 1

    .line 297
    iget-object v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mComponentName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getExtras()Landroid/os/Bundle;
    .locals 1

    .line 279
    iget-object v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public whitelist getIconId()I
    .locals 1

    .line 248
    iget v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mIconId:I

    return v0
.end method

.method public whitelist getId()Ljava/lang/String;
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mUid:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getLabelId()I
    .locals 1

    .line 262
    iget v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mLabelId:I

    return v0
.end method

.method public whitelist getLaunchType()I
    .locals 1

    .line 270
    iget v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mLaunchType:I

    return v0
.end method

.method public whitelist getPackageName()Ljava/lang/String;
    .locals 1

    .line 288
    iget-object v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getSmallIconId()I
    .locals 1

    .line 255
    iget v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mSmallIconId:I

    return v0
.end method

.method public blacklist isEnabled()Z
    .locals 1

    .line 241
    iget-boolean v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mEnabled:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 5

    .line 789
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

    .line 802
    .local v0, "retString":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 803
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 805
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v4, p0, Lcom/samsung/android/app/SemExecutableInfo;->mFeatureNames:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 806
    const-string v4, ", featureName =\'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 807
    iget-object v4, p0, Lcom/samsung/android/app/SemExecutableInfo;->mFeatureNames:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 808
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 809
    const-string v4, ", featureValue = \'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 810
    iget-object v4, p0, Lcom/samsung/android/app/SemExecutableInfo;->mFeatureValues:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 811
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 805
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 813
    .end local v3    # "i":I
    :cond_0
    const-string v3, ", mBundle =\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 814
    invoke-direct {p0}, Lcom/samsung/android/app/SemExecutableInfo;->getBundleString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 815
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 816
    const/16 v1, 0x7d

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 818
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 820
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 862
    iget-object v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mUid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 863
    iget-boolean v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mEnabled:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 864
    iget v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mLabelId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 865
    iget v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mIconId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 866
    iget v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mSmallIconId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 867
    iget v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mLaunchType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 868
    iget-object v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mCategory:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 869
    iget-object v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mAction:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 870
    iget-object v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 871
    iget-object v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mFeatureNames:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 872
    iget-object v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mFeatureValues:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 873
    iget-object v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mBundle:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 874
    iget-object v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mComponentName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 875
    iget-object v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mActivityLaunchMode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 876
    return-void
.end method
