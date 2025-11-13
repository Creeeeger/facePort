.class public final Landroid/view/inputmethod/InputMethodInfo;
.super Ljava/lang/Object;
.source "InputMethodInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist ACTION_IME_LANGUAGE_SETTINGS:Ljava/lang/String; = "android.view.inputmethod.action.IME_LANGUAGE_SETTINGS"

.field public static final whitelist ACTION_STYLUS_HANDWRITING_SETTINGS:Ljava/lang/String; = "android.view.inputmethod.action.STYLUS_HANDWRITING_SETTINGS"

.field public static final blacklist COMPONENT_NAME_MAX_LENGTH:I = 0x3e8

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist MAX_IMES_PER_PACKAGE:I = 0x14

.field static final greylist-max-o TAG:Ljava/lang/String; = "InputMethodInfo"


# instance fields
.field private final greylist-max-o mForceDefault:Z

.field private final blacklist mHandledConfigChanges:I

.field final greylist-max-o mId:Ljava/lang/String;

.field private final blacklist mInlineSuggestionsEnabled:Z

.field private final greylist-max-o mIsAuxIme:Z

.field final greylist-max-o mIsDefaultResId:I

.field final blacklist mIsVirtualDeviceOnly:Z

.field final greylist-max-o mIsVrOnly:Z

.field private final blacklist mLanguageSettingsActivityName:Ljava/lang/String;

.field final greylist-max-o mService:Landroid/content/pm/ResolveInfo;

.field final greylist-max-o mSettingsActivityName:Ljava/lang/String;

.field private final blacklist mShowInInputMethodPicker:Z

.field private final blacklist mStylusHandwritingSettingsActivityAttr:Ljava/lang/String;

.field private final greylist mSubtypes:Landroid/view/inputmethod/InputMethodSubtypeArray;

.field private final blacklist mSupportsConnectionlessStylusHandwriting:Z

.field private final blacklist mSupportsInlineSuggestionsWithTouchExploration:Z

.field private final blacklist mSupportsStylusHandwriting:Z

.field private final greylist-max-o mSupportsSwitchingToNextInputMethod:Z

.field private final blacklist mSuppressesSpellChecker:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/inputmethod/InputMethodInfo$1;

    invoke-direct {v0}, Landroid/view/inputmethod/InputMethodInfo$1;-><init>()V

    sput-object v0, Landroid/view/inputmethod/InputMethodInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/view/inputmethod/InputMethodInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;Ljava/util/List;)V

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;Ljava/util/List;)V
    .locals 33
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/pm/ResolveInfo;",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, v1, Landroid/view/inputmethod/InputMethodInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-static/range {p2 .. p2}, Landroid/view/inputmethod/InputMethodInfo;->computeId(Landroid/content/pm/ResolveInfo;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/view/inputmethod/InputMethodInfo;->mId:Ljava/lang/String;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v0, 0x0

    iput-boolean v0, v1, Landroid/view/inputmethod/InputMethodInfo;->mForceDefault:Z

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v18, v17

    :try_start_0
    const-string v0, "android.view.im"

    invoke-virtual {v4, v11, v0}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    move-object/from16 v16, v0

    if-eqz v16, :cond_15

    iget-object v0, v4, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v11, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v0

    invoke-static/range {v16 .. v16}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v19

    move-object/from16 v20, v19

    :goto_0
    invoke-interface/range {v16 .. v16}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_b
    .catchall {:try_start_0 .. :try_end_0} :catchall_b

    move/from16 v19, v2

    move/from16 v21, v5

    const/4 v5, 0x1

    if-eq v2, v5, :cond_0

    move/from16 v2, v19

    const/4 v5, 0x2

    if-eq v2, v5, :cond_1

    move-object/from16 v2, p2

    move/from16 v5, v21

    goto :goto_0

    :cond_0
    move/from16 v2, v19

    :cond_1
    :try_start_1
    invoke-interface/range {v16 .. v16}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    move/from16 v22, v2

    const-string v2, "input-method"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    sget-object v2, Lcom/android/internal/R$styleable;->InputMethod:[I

    move-object/from16 v23, v5

    move-object/from16 v5, v20

    invoke-virtual {v0, v5, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_9
    .catchall {:try_start_1 .. :try_end_1} :catchall_9

    move/from16 v20, v6

    const/4 v6, 0x2

    :try_start_2
    invoke-virtual {v2, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v12, v24

    invoke-static {}, Landroid/view/inputmethod/Flags;->imeSwitcherRevamp()Z

    move-result v6
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_8

    if-eqz v6, :cond_2

    const/16 v6, 0xe

    :try_start_3
    invoke-virtual {v2, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v13, v6

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object/from16 v28, v11

    move-object/from16 v6, v18

    move/from16 v5, v21

    goto/16 :goto_d

    :catch_0
    move-exception v0

    move-object/from16 v28, v11

    move-object/from16 v6, v18

    move/from16 v5, v21

    goto/16 :goto_c

    :cond_2
    :goto_1
    :try_start_4
    iget-object v6, v4, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_8
    .catchall {:try_start_4 .. :try_end_4} :catchall_8

    move/from16 v24, v7

    const/16 v7, 0x3e8

    if-eqz v6, :cond_3

    :try_start_5
    iget-object v6, v4, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-gt v6, v7, :cond_5

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object/from16 v28, v11

    move-object/from16 v6, v18

    move/from16 v5, v21

    move/from16 v7, v24

    goto/16 :goto_d

    :catch_1
    move-exception v0

    move-object/from16 v28, v11

    move-object/from16 v6, v18

    move/from16 v5, v21

    move/from16 v7, v24

    goto/16 :goto_c

    :cond_3
    :goto_2
    if-eqz v12, :cond_4

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v6

    if-gt v6, v7, :cond_5

    :cond_4
    if-eqz v13, :cond_6

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v6

    if-gt v6, v7, :cond_5

    goto :goto_3

    :cond_5
    new-instance v6, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v7, "Activity name exceeds maximum of 1000 characters"

    invoke-direct {v6, v7}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_6
    :goto_3
    const/4 v6, 0x4

    const/4 v7, 0x0

    :try_start_6
    invoke-virtual {v2, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v17

    move/from16 v25, v17

    const/16 v6, 0xb

    invoke-virtual {v2, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v17

    move/from16 v26, v17

    const/4 v6, 0x1

    invoke-virtual {v2, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v17

    move/from16 v15, v17

    const/4 v6, 0x3

    invoke-virtual {v2, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v17
    :try_end_6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_7
    .catchall {:try_start_6 .. :try_end_6} :catchall_7

    move/from16 v20, v17

    const/4 v6, 0x5

    :try_start_7
    invoke-virtual {v2, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v17
    :try_end_7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_7} :catch_6
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_6
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_6
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    move/from16 v24, v17

    const/16 v6, 0x9

    :try_start_8
    invoke-virtual {v2, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v17

    move/from16 v8, v17

    const/4 v6, 0x6

    invoke-virtual {v2, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v17

    move/from16 v9, v17

    const/4 v6, 0x7

    const/4 v7, 0x1

    invoke-virtual {v2, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v27

    move/from16 v10, v27

    const/4 v7, 0x0

    invoke-virtual {v2, v7, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, v1, Landroid/view/inputmethod/InputMethodInfo;->mHandledConfigChanges:I
    :try_end_8
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    const/16 v6, 0x8

    move-object/from16 v28, v11

    :try_start_9
    invoke-virtual {v2, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    iput-boolean v11, v1, Landroid/view/inputmethod/InputMethodInfo;->mSupportsStylusHandwriting:Z

    const/16 v11, 0xc

    invoke-virtual {v2, v11, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    iput-boolean v11, v1, Landroid/view/inputmethod/InputMethodInfo;->mSupportsConnectionlessStylusHandwriting:Z

    const/16 v7, 0xa

    invoke-virtual {v2, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    move-object v14, v11

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-interface/range {v16 .. v16}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v11

    :goto_4
    invoke-interface/range {v16 .. v16}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v6
    :try_end_9
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    move/from16 v29, v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_8

    :try_start_a
    invoke-interface/range {v16 .. v16}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v6
    :try_end_a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    if-le v6, v11, :cond_7

    goto :goto_5

    :cond_7
    move-object/from16 v6, v18

    goto/16 :goto_8

    :catchall_2
    move-exception v0

    move-object/from16 v6, v18

    move/from16 v5, v21

    move/from16 v7, v24

    goto/16 :goto_d

    :catch_2
    move-exception v0

    move-object/from16 v6, v18

    move/from16 v5, v21

    move/from16 v7, v24

    goto/16 :goto_c

    :cond_8
    :goto_5
    move/from16 v6, v29

    const/4 v7, 0x1

    if-eq v6, v7, :cond_e

    const/4 v7, 0x2

    if-ne v6, v7, :cond_d

    :try_start_b
    invoke-interface/range {v16 .. v16}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v29, v2

    const-string/jumbo v2, "subtype"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    sget-object v2, Lcom/android/internal/R$styleable;->InputMethod_Subtype:[I

    invoke-virtual {v0, v5, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    move-object/from16 v30, v0

    const/16 v0, 0xa

    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v23, v22

    const/16 v0, 0xb

    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v22

    new-instance v0, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    invoke-direct {v0}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;-><init>()V

    move-object/from16 v31, v5

    move/from16 v32, v6

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->setSubtypeNameResId(I)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    move-result-object v0

    move-object/from16 v19, v7

    const/4 v6, 0x1

    invoke-virtual {v2, v6, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->setSubtypeIconResId(I)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    move-result-object v0

    move-object/from16 v5, v23

    if-nez v5, :cond_9

    const/4 v7, 0x0

    goto :goto_6

    :cond_9
    new-instance v7, Landroid/icu/util/ULocale;

    invoke-direct {v7, v5}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V
    :try_end_b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :goto_6
    if-nez v22, :cond_a

    :try_start_c
    const-string v23, ""
    :try_end_c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_c .. :try_end_c} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_c .. :try_end_c} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    move-object/from16 v6, v23

    goto :goto_7

    :cond_a
    move-object/from16 v6, v22

    :goto_7
    :try_start_d
    invoke-virtual {v0, v7, v6}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->setPhysicalKeyboardHint(Landroid/icu/util/ULocale;Ljava/lang/String;)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    move-result-object v0

    const/16 v6, 0x9

    invoke-virtual {v2, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->setLanguageTag(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    move-result-object v0

    const/4 v7, 0x2

    invoke-virtual {v2, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->setSubtypeLocale(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    move-result-object v0

    const/4 v6, 0x3

    invoke-virtual {v2, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->setSubtypeMode(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    move-result-object v0

    const/4 v7, 0x4

    invoke-virtual {v2, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->setSubtypeExtraValue(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    move-result-object v0

    move-object/from16 v17, v5

    const/4 v6, 0x5

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-virtual {v0, v5}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->setIsAuxiliary(Z)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    move-result-object v0

    const/4 v5, 0x6

    invoke-virtual {v2, v5, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    invoke-virtual {v0, v6}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->setOverridesImplicitlyEnabledSubtype(Z)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    move-result-object v0

    const/4 v6, 0x7

    invoke-virtual {v2, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->setSubtypeId(I)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    move-result-object v0

    const/16 v5, 0x8

    invoke-virtual {v2, v5, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    invoke-virtual {v0, v6}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->setIsAsciiCapable(Z)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->build()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v0

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodSubtype;->isAuxiliary()Z

    move-result v6
    :try_end_d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_d .. :try_end_d} :catch_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_d .. :try_end_d} :catch_3
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    if-nez v6, :cond_b

    const/4 v6, 0x0

    move/from16 v21, v6

    :cond_b
    move-object/from16 v6, v18

    :try_start_e
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v18, v6

    move-object/from16 v23, v19

    move-object/from16 v2, v29

    move-object/from16 v0, v30

    move/from16 v22, v32

    const/16 v7, 0xa

    move v6, v5

    move-object/from16 v5, v31

    goto/16 :goto_4

    :cond_c
    move-object/from16 v30, v0

    move-object/from16 v31, v5

    move/from16 v32, v6

    move-object/from16 v19, v7

    move-object/from16 v6, v18

    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "Meta-data in input-method does not start with subtype tag"

    invoke-direct {v0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_e .. :try_end_e} :catch_a
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_e .. :try_end_e} :catch_a
    .catch Ljava/lang/NumberFormatException; {:try_start_e .. :try_end_e} :catch_a
    .catchall {:try_start_e .. :try_end_e} :catchall_a

    :catchall_3
    move-exception v0

    move-object/from16 v6, v18

    move/from16 v5, v21

    move/from16 v7, v24

    goto/16 :goto_d

    :catch_3
    move-exception v0

    move-object/from16 v6, v18

    move/from16 v5, v21

    move/from16 v7, v24

    goto/16 :goto_c

    :cond_d
    move-object/from16 v30, v0

    move-object/from16 v29, v2

    move-object/from16 v31, v5

    move/from16 v32, v6

    move-object/from16 v6, v18

    const/16 v5, 0x8

    const/4 v7, 0x0

    move/from16 v22, v32

    const/16 v7, 0xa

    move v6, v5

    move-object/from16 v5, v31

    goto/16 :goto_4

    :cond_e
    move-object/from16 v30, v0

    move-object/from16 v29, v2

    move-object/from16 v31, v5

    move/from16 v32, v6

    move-object/from16 v6, v18

    :goto_8
    if-eqz v16, :cond_f

    invoke-interface/range {v16 .. v16}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_f
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_10

    const/16 v21, 0x0

    move/from16 v0, v21

    goto :goto_9

    :cond_10
    move/from16 v0, v21

    :goto_9
    if-eqz v3, :cond_13

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v2

    const/4 v5, 0x0

    :goto_a
    if-ge v5, v2, :cond_12

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/inputmethod/InputMethodSubtype;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_11

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v17, v2

    goto :goto_b

    :cond_11
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v17, v2

    const-string v2, "Duplicated subtype definition found: "

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v11, ", "

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v11, "InputMethodInfo"

    invoke-static {v11, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_b
    add-int/lit8 v5, v5, 0x1

    move/from16 v2, v17

    goto :goto_a

    :cond_12
    move/from16 v17, v2

    :cond_13
    new-instance v2, Landroid/view/inputmethod/InputMethodSubtypeArray;

    invoke-direct {v2, v6}, Landroid/view/inputmethod/InputMethodSubtypeArray;-><init>(Ljava/util/List;)V

    iput-object v2, v1, Landroid/view/inputmethod/InputMethodInfo;->mSubtypes:Landroid/view/inputmethod/InputMethodSubtypeArray;

    iput-object v12, v1, Landroid/view/inputmethod/InputMethodInfo;->mSettingsActivityName:Ljava/lang/String;

    iput-object v13, v1, Landroid/view/inputmethod/InputMethodInfo;->mLanguageSettingsActivityName:Ljava/lang/String;

    iput-object v14, v1, Landroid/view/inputmethod/InputMethodInfo;->mStylusHandwritingSettingsActivityAttr:Ljava/lang/String;

    iput v15, v1, Landroid/view/inputmethod/InputMethodInfo;->mIsDefaultResId:I

    iput-boolean v0, v1, Landroid/view/inputmethod/InputMethodInfo;->mIsAuxIme:Z

    move/from16 v2, v20

    iput-boolean v2, v1, Landroid/view/inputmethod/InputMethodInfo;->mSupportsSwitchingToNextInputMethod:Z

    move/from16 v5, v24

    iput-boolean v5, v1, Landroid/view/inputmethod/InputMethodInfo;->mInlineSuggestionsEnabled:Z

    iput-boolean v8, v1, Landroid/view/inputmethod/InputMethodInfo;->mSupportsInlineSuggestionsWithTouchExploration:Z

    iput-boolean v9, v1, Landroid/view/inputmethod/InputMethodInfo;->mSuppressesSpellChecker:Z

    iput-boolean v10, v1, Landroid/view/inputmethod/InputMethodInfo;->mShowInInputMethodPicker:Z

    move/from16 v7, v25

    iput-boolean v7, v1, Landroid/view/inputmethod/InputMethodInfo;->mIsVrOnly:Z

    move/from16 v11, v26

    iput-boolean v11, v1, Landroid/view/inputmethod/InputMethodInfo;->mIsVirtualDeviceOnly:Z

    return-void

    :catchall_4
    move-exception v0

    move-object/from16 v6, v18

    move/from16 v2, v20

    move/from16 v5, v24

    move v7, v5

    move/from16 v5, v21

    goto/16 :goto_d

    :catch_4
    move-exception v0

    move-object/from16 v6, v18

    move/from16 v2, v20

    move/from16 v5, v24

    move v7, v5

    move/from16 v5, v21

    goto/16 :goto_c

    :catchall_5
    move-exception v0

    move-object/from16 v28, v11

    move-object/from16 v6, v18

    move/from16 v2, v20

    move/from16 v5, v24

    move v7, v5

    move/from16 v5, v21

    goto/16 :goto_d

    :catch_5
    move-exception v0

    move-object/from16 v28, v11

    move-object/from16 v6, v18

    move/from16 v2, v20

    move/from16 v5, v24

    move v7, v5

    move/from16 v5, v21

    goto/16 :goto_c

    :catchall_6
    move-exception v0

    move-object/from16 v28, v11

    move-object/from16 v6, v18

    move/from16 v2, v20

    move/from16 v5, v21

    move/from16 v7, v24

    goto/16 :goto_d

    :catch_6
    move-exception v0

    move-object/from16 v28, v11

    move-object/from16 v6, v18

    move/from16 v2, v20

    move/from16 v5, v21

    move/from16 v7, v24

    goto/16 :goto_c

    :catchall_7
    move-exception v0

    move-object/from16 v28, v11

    move-object/from16 v6, v18

    move/from16 v5, v21

    move/from16 v7, v24

    goto/16 :goto_d

    :catch_7
    move-exception v0

    move-object/from16 v28, v11

    move-object/from16 v6, v18

    move/from16 v5, v21

    move/from16 v7, v24

    goto/16 :goto_c

    :catchall_8
    move-exception v0

    move/from16 v24, v7

    move-object/from16 v28, v11

    move-object/from16 v6, v18

    move/from16 v5, v21

    goto/16 :goto_d

    :catch_8
    move-exception v0

    move/from16 v24, v7

    move-object/from16 v28, v11

    move-object/from16 v6, v18

    move/from16 v5, v21

    goto/16 :goto_c

    :cond_14
    move-object/from16 v30, v0

    move-object/from16 v23, v5

    move/from16 v24, v7

    move-object/from16 v28, v11

    move-object/from16 v31, v20

    move/from16 v20, v6

    move-object/from16 v6, v18

    :try_start_f
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "Meta-data does not start with input-method tag"

    invoke-direct {v0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_9
    move-exception v0

    move/from16 v20, v6

    move/from16 v24, v7

    move-object/from16 v28, v11

    move-object/from16 v6, v18

    move/from16 v5, v21

    goto/16 :goto_d

    :catch_9
    move-exception v0

    move/from16 v20, v6

    move/from16 v24, v7

    move-object/from16 v28, v11

    move-object/from16 v6, v18

    move/from16 v5, v21

    goto :goto_c

    :cond_15
    move/from16 v21, v5

    move/from16 v20, v6

    move/from16 v24, v7

    move-object/from16 v28, v11

    move-object/from16 v6, v18

    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "No android.view.im meta-data"

    invoke-direct {v0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_f .. :try_end_f} :catch_a
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_f .. :try_end_f} :catch_a
    .catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_f} :catch_a
    .catchall {:try_start_f .. :try_end_f} :catchall_a

    :catchall_a
    move-exception v0

    move/from16 v5, v21

    move/from16 v7, v24

    goto :goto_d

    :catch_a
    move-exception v0

    move/from16 v5, v21

    move/from16 v7, v24

    goto :goto_c

    :catchall_b
    move-exception v0

    move/from16 v21, v5

    move/from16 v20, v6

    move/from16 v24, v7

    move-object/from16 v28, v11

    move-object/from16 v6, v18

    goto :goto_d

    :catch_b
    move-exception v0

    move/from16 v21, v5

    move/from16 v20, v6

    move/from16 v24, v7

    move-object/from16 v28, v11

    move-object/from16 v6, v18

    :goto_c
    :try_start_10
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v0

    const-string v0, "Unable to create context for: "

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v11, v4, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_c

    :catchall_c
    move-exception v0

    :goto_d
    if-eqz v16, :cond_16

    invoke-interface/range {v16 .. v16}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_16
    throw v0
.end method

.method public constructor blacklist <init>(Landroid/content/pm/ResolveInfo;ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;IZZZZZIZZLjava/lang/String;Z)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ResolveInfo;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;IZZZZZIZZ",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iput-object v1, v0, Landroid/view/inputmethod/InputMethodInfo;->mService:Landroid/content/pm/ResolveInfo;

    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v5, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/view/inputmethod/InputMethodInfo;->mId:Ljava/lang/String;

    move-object/from16 v3, p3

    iput-object v3, v0, Landroid/view/inputmethod/InputMethodInfo;->mSettingsActivityName:Ljava/lang/String;

    move-object/from16 v4, p4

    iput-object v4, v0, Landroid/view/inputmethod/InputMethodInfo;->mLanguageSettingsActivityName:Ljava/lang/String;

    move/from16 v5, p6

    iput v5, v0, Landroid/view/inputmethod/InputMethodInfo;->mIsDefaultResId:I

    move/from16 v6, p2

    iput-boolean v6, v0, Landroid/view/inputmethod/InputMethodInfo;->mIsAuxIme:Z

    new-instance v7, Landroid/view/inputmethod/InputMethodSubtypeArray;

    move-object/from16 v8, p5

    invoke-direct {v7, v8}, Landroid/view/inputmethod/InputMethodSubtypeArray;-><init>(Ljava/util/List;)V

    iput-object v7, v0, Landroid/view/inputmethod/InputMethodInfo;->mSubtypes:Landroid/view/inputmethod/InputMethodSubtypeArray;

    move/from16 v7, p7

    iput-boolean v7, v0, Landroid/view/inputmethod/InputMethodInfo;->mForceDefault:Z

    move/from16 v9, p8

    iput-boolean v9, v0, Landroid/view/inputmethod/InputMethodInfo;->mSupportsSwitchingToNextInputMethod:Z

    move/from16 v10, p9

    iput-boolean v10, v0, Landroid/view/inputmethod/InputMethodInfo;->mInlineSuggestionsEnabled:Z

    move/from16 v11, p16

    iput-boolean v11, v0, Landroid/view/inputmethod/InputMethodInfo;->mSupportsInlineSuggestionsWithTouchExploration:Z

    const/4 v12, 0x0

    iput-boolean v12, v0, Landroid/view/inputmethod/InputMethodInfo;->mSuppressesSpellChecker:Z

    const/4 v12, 0x1

    iput-boolean v12, v0, Landroid/view/inputmethod/InputMethodInfo;->mShowInInputMethodPicker:Z

    move/from16 v12, p10

    iput-boolean v12, v0, Landroid/view/inputmethod/InputMethodInfo;->mIsVrOnly:Z

    move/from16 v13, p11

    iput-boolean v13, v0, Landroid/view/inputmethod/InputMethodInfo;->mIsVirtualDeviceOnly:Z

    move/from16 v14, p12

    iput v14, v0, Landroid/view/inputmethod/InputMethodInfo;->mHandledConfigChanges:I

    move/from16 v15, p13

    iput-boolean v15, v0, Landroid/view/inputmethod/InputMethodInfo;->mSupportsStylusHandwriting:Z

    move/from16 v1, p14

    iput-boolean v1, v0, Landroid/view/inputmethod/InputMethodInfo;->mSupportsConnectionlessStylusHandwriting:Z

    move-object/from16 v1, p15

    iput-object v1, v0, Landroid/view/inputmethod/InputMethodInfo;->mStylusHandwritingSettingsActivityAttr:Ljava/lang/String;

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/pm/ResolveInfo;ZLjava/lang/String;Ljava/util/List;IZ)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ResolveInfo;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;IZ)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct/range {v0 .. v16}, Landroid/view/inputmethod/InputMethodInfo;-><init>(Landroid/content/pm/ResolveInfo;ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;IZZZZZIZZLjava/lang/String;Z)V

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/pm/ResolveInfo;ZLjava/lang/String;Ljava/util/List;IZZZ)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ResolveInfo;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;IZZZ)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v10, p8

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v4, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct/range {v0 .. v16}, Landroid/view/inputmethod/InputMethodInfo;-><init>(Landroid/content/pm/ResolveInfo;ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;IZZZZZIZZLjava/lang/String;Z)V

    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mSettingsActivityName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mLanguageSettingsActivityName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mIsDefaultResId:I

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
    iput-boolean v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mIsAuxIme:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mSupportsSwitchingToNextInputMethod:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_2

    move v0, v2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    iput-boolean v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mInlineSuggestionsEnabled:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_3

    goto :goto_3

    :cond_3
    move v2, v1

    :goto_3
    iput-boolean v2, p0, Landroid/view/inputmethod/InputMethodInfo;->mSupportsInlineSuggestionsWithTouchExploration:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mSuppressesSpellChecker:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mShowInInputMethodPicker:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mIsVrOnly:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mIsVirtualDeviceOnly:Z

    sget-object v0, Landroid/content/pm/ResolveInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mService:Landroid/content/pm/ResolveInfo;

    new-instance v0, Landroid/view/inputmethod/InputMethodSubtypeArray;

    invoke-direct {v0, p1}, Landroid/view/inputmethod/InputMethodSubtypeArray;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mSubtypes:Landroid/view/inputmethod/InputMethodSubtypeArray;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mHandledConfigChanges:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mSupportsStylusHandwriting:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mSupportsConnectionlessStylusHandwriting:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mStylusHandwritingSettingsActivityAttr:Ljava/lang/String;

    iput-boolean v1, p0, Landroid/view/inputmethod/InputMethodInfo;->mForceDefault:Z

    return-void
.end method

.method public constructor blacklist <init>(Landroid/view/inputmethod/InputMethodInfo;)V
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/view/inputmethod/InputMethodInfo;-><init>(Landroid/view/inputmethod/InputMethodInfo;Ljava/util/List;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/view/inputmethod/InputMethodInfo;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/inputmethod/InputMethodInfo;",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Landroid/view/inputmethod/InputMethodInfo;->mId:Ljava/lang/String;

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mId:Ljava/lang/String;

    iget-object v0, p1, Landroid/view/inputmethod/InputMethodInfo;->mSettingsActivityName:Ljava/lang/String;

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mSettingsActivityName:Ljava/lang/String;

    iget-object v0, p1, Landroid/view/inputmethod/InputMethodInfo;->mLanguageSettingsActivityName:Ljava/lang/String;

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mLanguageSettingsActivityName:Ljava/lang/String;

    iget v0, p1, Landroid/view/inputmethod/InputMethodInfo;->mIsDefaultResId:I

    iput v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mIsDefaultResId:I

    iget-boolean v0, p1, Landroid/view/inputmethod/InputMethodInfo;->mIsAuxIme:Z

    iput-boolean v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mIsAuxIme:Z

    iget-boolean v0, p1, Landroid/view/inputmethod/InputMethodInfo;->mSupportsSwitchingToNextInputMethod:Z

    iput-boolean v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mSupportsSwitchingToNextInputMethod:Z

    iget-boolean v0, p1, Landroid/view/inputmethod/InputMethodInfo;->mInlineSuggestionsEnabled:Z

    iput-boolean v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mInlineSuggestionsEnabled:Z

    iget-boolean v0, p1, Landroid/view/inputmethod/InputMethodInfo;->mSupportsInlineSuggestionsWithTouchExploration:Z

    iput-boolean v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mSupportsInlineSuggestionsWithTouchExploration:Z

    iget-boolean v0, p1, Landroid/view/inputmethod/InputMethodInfo;->mSuppressesSpellChecker:Z

    iput-boolean v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mSuppressesSpellChecker:Z

    iget-boolean v0, p1, Landroid/view/inputmethod/InputMethodInfo;->mShowInInputMethodPicker:Z

    iput-boolean v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mShowInInputMethodPicker:Z

    iget-boolean v0, p1, Landroid/view/inputmethod/InputMethodInfo;->mIsVrOnly:Z

    iput-boolean v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mIsVrOnly:Z

    iget-boolean v0, p1, Landroid/view/inputmethod/InputMethodInfo;->mIsVirtualDeviceOnly:Z

    iput-boolean v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mIsVirtualDeviceOnly:Z

    iget-object v0, p1, Landroid/view/inputmethod/InputMethodInfo;->mService:Landroid/content/pm/ResolveInfo;

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mService:Landroid/content/pm/ResolveInfo;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/view/inputmethod/InputMethodInfo;->mSubtypes:Landroid/view/inputmethod/InputMethodSubtypeArray;

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mSubtypes:Landroid/view/inputmethod/InputMethodSubtypeArray;

    goto :goto_1

    :cond_0
    iget-object v0, p1, Landroid/view/inputmethod/InputMethodInfo;->mSubtypes:Landroid/view/inputmethod/InputMethodSubtypeArray;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodSubtypeArray;->toList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodSubtype;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    new-instance v2, Landroid/view/inputmethod/InputMethodSubtypeArray;

    invoke-direct {v2, v0}, Landroid/view/inputmethod/InputMethodSubtypeArray;-><init>(Ljava/util/List;)V

    iput-object v2, p0, Landroid/view/inputmethod/InputMethodInfo;->mSubtypes:Landroid/view/inputmethod/InputMethodSubtypeArray;

    :goto_1
    iget v0, p1, Landroid/view/inputmethod/InputMethodInfo;->mHandledConfigChanges:I

    iput v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mHandledConfigChanges:I

    iget-boolean v0, p1, Landroid/view/inputmethod/InputMethodInfo;->mSupportsStylusHandwriting:Z

    iput-boolean v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mSupportsStylusHandwriting:Z

    iget-boolean v0, p1, Landroid/view/inputmethod/InputMethodInfo;->mSupportsConnectionlessStylusHandwriting:Z

    iput-boolean v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mSupportsConnectionlessStylusHandwriting:Z

    iget-boolean v0, p1, Landroid/view/inputmethod/InputMethodInfo;->mForceDefault:Z

    iput-boolean v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mForceDefault:Z

    iget-object v0, p1, Landroid/view/inputmethod/InputMethodInfo;->mStylusHandwritingSettingsActivityAttr:Ljava/lang/String;

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mStylusHandwritingSettingsActivityAttr:Ljava/lang/String;

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v3, p4

    invoke-static/range {p1 .. p3}, Landroid/view/inputmethod/InputMethodInfo;->buildFakeResolveInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct/range {v0 .. v16}, Landroid/view/inputmethod/InputMethodInfo;-><init>(Landroid/content/pm/ResolveInfo;ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;IZZZZZIZZLjava/lang/String;Z)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;I)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v3, p4

    move/from16 v12, p5

    invoke-static/range {p1 .. p3}, Landroid/view/inputmethod/InputMethodInfo;->buildFakeResolveInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct/range {v0 .. v16}, Landroid/view/inputmethod/InputMethodInfo;-><init>(Landroid/content/pm/ResolveInfo;ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;IZZZZZIZZLjava/lang/String;Z)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move/from16 v13, p6

    move-object/from16 v15, p7

    invoke-static/range {p1 .. p3}, Landroid/view/inputmethod/InputMethodInfo;->buildFakeResolveInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct/range {v0 .. v16}, Landroid/view/inputmethod/InputMethodInfo;-><init>(Landroid/content/pm/ResolveInfo;ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;IZZZZZIZZLjava/lang/String;Z)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move/from16 v13, p6

    move/from16 v14, p7

    move-object/from16 v15, p8

    invoke-static/range {p1 .. p3}, Landroid/view/inputmethod/InputMethodInfo;->buildFakeResolveInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    const/4 v12, 0x0

    const/16 v16, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v0 .. v16}, Landroid/view/inputmethod/InputMethodInfo;-><init>(Landroid/content/pm/ResolveInfo;ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;IZZZZZIZZLjava/lang/String;Z)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v3, p4

    move/from16 v13, p5

    move-object/from16 v15, p6

    invoke-static/range {p1 .. p3}, Landroid/view/inputmethod/InputMethodInfo;->buildFakeResolveInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct/range {v0 .. v16}, Landroid/view/inputmethod/InputMethodInfo;-><init>(Landroid/content/pm/ResolveInfo;ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;IZZZZZIZZLjava/lang/String;Z)V

    return-void
.end method

.method private static blacklist buildFakeResolveInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/pm/ResolveInfo;
    .locals 4

    new-instance v0, Landroid/content/pm/ResolveInfo;

    invoke-direct {v0}, Landroid/content/pm/ResolveInfo;-><init>()V

    new-instance v1, Landroid/content/pm/ServiceInfo;

    invoke-direct {v1}, Landroid/content/pm/ServiceInfo;-><init>()V

    new-instance v2, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v2}, Landroid/content/pm/ApplicationInfo;-><init>()V

    iput-object p0, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/content/pm/ApplicationInfo;->enabled:Z

    iput-object v2, v1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-boolean v3, v1, Landroid/content/pm/ServiceInfo;->enabled:Z

    iput-object p0, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iput-object p1, v1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    iput-boolean v3, v1, Landroid/content/pm/ServiceInfo;->exported:Z

    iput-object p2, v1, Landroid/content/pm/ServiceInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    iput-object v1, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    return-object v0
.end method

.method public static greylist-max-o computeId(Landroid/content/pm/ResolveInfo;)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v3, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public blacklist createImeLanguageSettingsActivityIntent()Landroid/content/Intent;
    .locals 4

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mLanguageSettingsActivityName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.view.inputmethod.action.IME_LANGUAGE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v3, p0, Landroid/view/inputmethod/InputMethodInfo;->mLanguageSettingsActivityName:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public whitelist createStylusHandwritingSettingsActivityIntent()Landroid/content/Intent;
    .locals 4

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mStylusHandwritingSettingsActivityAttr:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mSupportsStylusHandwriting:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.view.inputmethod.action.STYLUS_HANDWRITING_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v3, p0, Landroid/view/inputmethod/InputMethodInfo;->mStylusHandwritingSettingsActivityAttr:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist dump(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodInfo;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mSettingsActivityName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodInfo;->mSettingsActivityName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mLanguageSettingsActivityName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodInfo;->mLanguageSettingsActivityName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mIsVrOnly="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/view/inputmethod/InputMethodInfo;->mIsVrOnly:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mIsVirtualDeviceOnly="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/view/inputmethod/InputMethodInfo;->mIsVirtualDeviceOnly:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mSupportsSwitchingToNextInputMethod="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/view/inputmethod/InputMethodInfo;->mSupportsSwitchingToNextInputMethod:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mInlineSuggestionsEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/view/inputmethod/InputMethodInfo;->mInlineSuggestionsEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mSupportsInlineSuggestionsWithTouchExploration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/view/inputmethod/InputMethodInfo;->mSupportsInlineSuggestionsWithTouchExploration:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mSuppressesSpellChecker="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/view/inputmethod/InputMethodInfo;->mSuppressesSpellChecker:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mShowInInputMethodPicker="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/view/inputmethod/InputMethodInfo;->mShowInInputMethodPicker:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mSupportsStylusHandwriting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/view/inputmethod/InputMethodInfo;->mSupportsStylusHandwriting:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mSupportsConnectionlessStylusHandwriting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/view/inputmethod/InputMethodInfo;->mSupportsConnectionlessStylusHandwriting:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mStylusHandwritingSettingsActivityAttr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodInfo;->mStylusHandwritingSettingsActivityAttr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mIsDefaultResId=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/inputmethod/InputMethodInfo;->mIsDefaultResId:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Service:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mService:Landroid/content/pm/ResolveInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/ResolveInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "InputMethodSubtype array: count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodInfo;->mSubtypes:Landroid/view/inputmethod/InputMethodSubtypeArray;

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodSubtypeArray;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mSubtypes:Landroid/view/inputmethod/InputMethodSubtypeArray;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodSubtypeArray;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    :cond_1
    instance-of v1, p1, Landroid/view/inputmethod/InputMethodInfo;

    if-nez v1, :cond_2

    return v0

    :cond_2
    move-object v0, p1

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodInfo;->mId:Ljava/lang/String;

    iget-object v2, v0, Landroid/view/inputmethod/InputMethodInfo;->mId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public whitelist getComponent()Landroid/content/ComponentName;
    .locals 3

    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public whitelist getConfigChanges()I
    .locals 1

    iget v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mHandledConfigChanges:I

    return v0
.end method

.method public whitelist getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getIsDefaultResourceId()I
    .locals 1

    iget v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mIsDefaultResId:I

    return v0
.end method

.method public whitelist getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getServiceInfo()Landroid/content/pm/ServiceInfo;
    .locals 1

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    return-object v0
.end method

.method public whitelist getServiceName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getSettingsActivity()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mSettingsActivityName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;
    .locals 1

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mSubtypes:Landroid/view/inputmethod/InputMethodSubtypeArray;

    invoke-virtual {v0, p1}, Landroid/view/inputmethod/InputMethodSubtypeArray;->get(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getSubtypeCount()I
    .locals 1

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mSubtypes:Landroid/view/inputmethod/InputMethodSubtypeArray;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodSubtypeArray;->getCount()I

    move-result v0

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 1

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public greylist-max-o isAuxiliaryIme()Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mIsAuxIme:Z

    return v0
.end method

.method public greylist isDefault(Landroid/content/Context;)Z
    .locals 3

    iget-boolean v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mForceDefault:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->getIsDefaultResourceId()I

    move-result v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->getIsDefaultResourceId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    return v0
.end method

.method public blacklist isInlineSuggestionsEnabled()Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mInlineSuggestionsEnabled:Z

    return v0
.end method

.method public blacklist isSystem()Z
    .locals 2

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public whitelist isVirtualDeviceOnly()Z
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-boolean v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mIsVirtualDeviceOnly:Z

    return v0
.end method

.method public greylist-max-o isVrOnly()Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mIsVrOnly:Z

    return v0
.end method

.method public whitelist loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mService:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0, p1}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public whitelist loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mService:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0, p1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public whitelist shouldShowInInputMethodPicker()Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mShowInInputMethodPicker:Z

    return v0
.end method

.method public whitelist supportsConnectionlessStylusHandwriting()Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mSupportsConnectionlessStylusHandwriting:Z

    return v0
.end method

.method public blacklist supportsInlineSuggestionsWithTouchExploration()Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mSupportsInlineSuggestionsWithTouchExploration:Z

    return v0
.end method

.method public whitelist supportsStylusHandwriting()Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mSupportsStylusHandwriting:Z

    return v0
.end method

.method public greylist-max-o supportsSwitchingToNextInputMethod()Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mSupportsSwitchingToNextInputMethod:Z

    return v0
.end method

.method public whitelist suppressesSpellChecker()Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mSuppressesSpellChecker:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InputMethodInfo{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodInfo;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", settings: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodInfo;->mSettingsActivityName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", languageSettings: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodInfo;->mLanguageSettingsActivityName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mSettingsActivityName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mLanguageSettingsActivityName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    iget v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mIsDefaultResId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mIsAuxIme:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mSupportsSwitchingToNextInputMethod:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mInlineSuggestionsEnabled:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mSupportsInlineSuggestionsWithTouchExploration:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mSuppressesSpellChecker:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mShowInInputMethodPicker:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mIsVrOnly:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mIsVirtualDeviceOnly:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mService:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/ResolveInfo;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mSubtypes:Landroid/view/inputmethod/InputMethodSubtypeArray;

    invoke-virtual {v0, p1}, Landroid/view/inputmethod/InputMethodSubtypeArray;->writeToParcel(Landroid/os/Parcel;)V

    iget v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mHandledConfigChanges:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mSupportsStylusHandwriting:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mSupportsConnectionlessStylusHandwriting:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mStylusHandwritingSettingsActivityAttr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    return-void
.end method
