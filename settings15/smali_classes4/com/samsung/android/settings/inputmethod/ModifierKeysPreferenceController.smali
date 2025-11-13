.class public Lcom/samsung/android/settings/inputmethod/ModifierKeysPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final KEY_PREFERENCE_ALT:Ljava/lang/String; = "modifier_keys_alt"

.field private static final KEY_PREFERENCE_CAPS_LOCK:Ljava/lang/String; = "modifier_keys_caps_lock"

.field private static final KEY_PREFERENCE_CTRL:Ljava/lang/String; = "modifier_keys_ctrl"

.field private static final KEY_PREFERENCE_ESC:Ljava/lang/String; = "modifier_keys_esc"

.field private static final KEY_PREFERENCE_META:Ljava/lang/String; = "modifier_keys_meta"


# instance fields
.field private mAltDropDownPref:Landroidx/preference/SecDropDownPreference;

.field private mCapsLockDropDownPref:Landroidx/preference/SecDropDownPreference;

.field private mCtrlDropDownPref:Landroidx/preference/SecDropDownPreference;

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mEscDropDownPref:Landroidx/preference/SecDropDownPreference;

.field private final mIm:Landroid/hardware/input/InputManager;

.field private final mKeyNames:[Ljava/lang/String;

.field private mMetaDropDownPref:Landroidx/preference/SecDropDownPreference;

.field private mParent:Landroidx/fragment/app/Fragment;

.field private final mRemappableKeyList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[I>;"
        }
    .end annotation
.end field

.field private final mRemappableKeyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[I>;"
        }
    .end annotation
.end field

.field private final mRemappableKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mScreen:Landroidx/preference/PreferenceScreen;

.field modifierKeys:[Ljava/lang/CharSequence;

.field modifierKeys1:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field modifierKeysEsc:[Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 32

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0x71

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v13, 0x72

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v14, 0x75

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v15, 0x76

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v12, 0x39

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v11, 0x3a

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v16, 0x73

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/16 v17, 0x6f

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v18, 0x4

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v11, v19

    move-object/from16 v12, v21

    filled-new-array/range {v3 .. v12}, [Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/samsung/android/settings/inputmethod/ModifierKeysPreferenceController;->mRemappableKeys:Ljava/util/List;

    iget-object v1, v0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v3, 0x7f14183f

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v22

    iget-object v1, v0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v23

    iget-object v1, v0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v4, 0x7f141843

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v24

    iget-object v1, v0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v25

    iget-object v1, v0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v5, 0x7f14183b

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v26

    iget-object v1, v0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v27

    iget-object v1, v0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v6, 0x7f14183e

    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v28

    iget-object v1, v0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v7, 0x7f141842

    invoke-virtual {v1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v29

    iget-object v1, v0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v8, 0x7f14183c

    invoke-virtual {v1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v30

    iget-object v1, v0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v9, 0x7f141844

    invoke-virtual {v1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v31

    filled-new-array/range {v22 .. v31}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/settings/inputmethod/ModifierKeysPreferenceController;->mKeyNames:[Ljava/lang/String;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/CharSequence;

    iget-object v10, v0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v1, v20

    iget-object v10, v0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    aput-object v10, v1, v11

    iget-object v10, v0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x2

    aput-object v10, v1, v12

    iget-object v10, v0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v14, 0x3

    aput-object v10, v1, v14

    iget-object v10, v0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v1, v18

    iput-object v1, v0, Lcom/samsung/android/settings/inputmethod/ModifierKeysPreferenceController;->modifierKeys:[Ljava/lang/CharSequence;

    new-array v1, v14, [Ljava/lang/CharSequence;

    iget-object v10, v0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v1, v20

    iget-object v10, v0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v1, v11

    iget-object v10, v0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v1, v12

    iput-object v1, v0, Lcom/samsung/android/settings/inputmethod/ModifierKeysPreferenceController;->modifierKeysEsc:[Ljava/lang/CharSequence;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v10, v0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v22

    iget-object v6, v0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v23

    iget-object v3, v0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v24

    iget-object v3, v0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v25

    iget-object v3, v0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v26

    iget-object v3, v0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v27

    iget-object v3, v0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v28

    filled-new-array/range {v22 .. v28}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/samsung/android/settings/inputmethod/ModifierKeysPreferenceController;->modifierKeys1:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    filled-new-array/range {v16 .. v16}, [I

    move-result-object v3

    filled-new-array {v2, v13}, [I

    move-result-object v4

    const/16 v2, 0x75

    filled-new-array {v2, v15}, [I

    move-result-object v5

    const/16 v2, 0x39

    const/16 v6, 0x3a

    filled-new-array {v2, v6}, [I

    move-result-object v6

    filled-new-array/range {v17 .. v17}, [I

    move-result-object v7

    filled-new-array/range {v18 .. v18}, [I

    move-result-object v8

    filled-new-array/range {v20 .. v20}, [I

    move-result-object v9

    filled-new-array/range {v3 .. v9}, [[I

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/samsung/android/settings/inputmethod/ModifierKeysPreferenceController;->mRemappableKeyList:Ljava/util/List;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcom/samsung/android/settings/inputmethod/ModifierKeysPreferenceController;->mRemappableKeyMap:Ljava/util/Map;

    const-class v1, Landroid/hardware/input/InputManager;

    move-object/from16 v2, p1

    invoke-virtual {v2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/input/InputManager;

    iput-object v1, v0, Lcom/samsung/android/settings/inputmethod/ModifierKeysPreferenceController;->mIm:Landroid/hardware/input/InputManager;

    const-string v2, "InputManager service cannot be null"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v1, Lcom/android/settings/overlay/FeatureFactoryImpl;->_factory:Lcom/android/settings/overlay/FeatureFactoryImpl;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/android/settings/overlay/FeatureFactoryImpl;->keyboardSettingsFeatureProvider$delegate:Lkotlin/Lazy;

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/inputmethod/KeyboardSettingsFeatureProviderImpl;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/samsung/android/settings/inputmethod/ModifierKeysPreferenceController;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "No feature factory configured"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static isAlt(I)Z
    .locals 1

    const/16 v0, 0x39

    if-eq p0, v0, :cond_1

    const/16 v0, 0x3a

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static isCapLock(I)Z
    .locals 1

    const/16 v0, 0x73

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isCtrl(I)Z
    .locals 1

    const/16 v0, 0x71

    if-eq p0, v0, :cond_1

    const/16 v0, 0x72

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static isEsc(I)Z
    .locals 1

    const/16 v0, 0x6f

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isKeyCapsLock(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    const v0, 0x7f14183e

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static isKeyEscape(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    const v0, 0x7f141842

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private isKeyNone(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    const p0, 0x7f141844

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static isMeta(I)Z
    .locals 1

    const/16 v0, 0x75

    if-eq p0, v0, :cond_1

    const/16 v0, 0x76

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private updateVal(Landroidx/preference/Preference;Ljava/lang/String;)V
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/inputmethod/ModifierKeysPreferenceController;->modifierKeys1:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/inputmethod/ModifierKeysPreferenceController;->mRemappableKeyMap:Ljava/util/Map;

    iget-object v3, p0, Lcom/samsung/android/settings/inputmethod/ModifierKeysPreferenceController;->modifierKeys1:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/settings/inputmethod/ModifierKeysPreferenceController;->mRemappableKeyList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/inputmethod/ModifierKeysPreferenceController;->mRemappableKeyMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_6

    iget-object v2, p0, Lcom/samsung/android/settings/inputmethod/ModifierKeysPreferenceController;->mIm:Landroid/hardware/input/InputManager;

    aget v3, v1, v0

    invoke-virtual {v2, v3, v3}, Landroid/hardware/input/InputManager;->remapModifierKey(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/inputmethod/ModifierKeysPreferenceController;->mRemappableKeyMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    iget-object v3, p0, Lcom/samsung/android/settings/inputmethod/ModifierKeysPreferenceController;->mRemappableKeyMap:Ljava/util/Map;

    invoke-interface {v3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    iget-object v4, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v4, v1}, Lcom/samsung/android/settings/inputmethod/ModifierKeysPreferenceController;->isKeyCapsLock(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v4, v1}, Lcom/samsung/android/settings/inputmethod/ModifierKeysPreferenceController;->isKeyEscape(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    iget-object v4, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v4, v1}, Lcom/samsung/android/settings/inputmethod/ModifierKeysPreferenceController;->isKeyCapsLock(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v4, p2}, Lcom/samsung/android/settings/inputmethod/ModifierKeysPreferenceController;->isKeyCapsLock(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {p0, v4, p2}, Lcom/samsung/android/settings/inputmethod/ModifierKeysPreferenceController;->isKeyNone(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/inputmethod/ModifierKeysPreferenceController;->mIm:Landroid/hardware/input/InputManager;

    aget v4, v2, v0

    aget v6, v3, v0

    invoke-virtual {v1, v4, v6}, Landroid/hardware/input/InputManager;->remapModifierKey(II)V

    iget-object p0, p0, Lcom/samsung/android/settings/inputmethod/ModifierKeysPreferenceController;->mIm:Landroid/hardware/input/InputManager;

    aget v1, v2, v5

    aget v0, v3, v0

    invoke-virtual {p0, v1, v0}, Landroid/hardware/input/InputManager;->remapModifierKey(II)V

    goto :goto_3

    :cond_4
    iget-object v4, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v4, v1}, Lcom/samsung/android/settings/inputmethod/ModifierKeysPreferenceController;->isKeyCapsLock(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1, p2}, Lcom/samsung/android/settings/inputmethod/ModifierKeysPreferenceController;->isKeyCapsLock(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/samsung/android/settings/inputmethod/ModifierKeysPreferenceController;->mIm:Landroid/hardware/input/InputManager;

    aget v4, v2, v0

    aget v0, v3, v0

    invoke-virtual {v1, v4, v0}, Landroid/hardware/input/InputManager;->remapModifierKey(II)V

    iget-object p0, p0, Lcom/samsung/android/settings/inputmethod/ModifierKeysPreferenceController;->mIm:Landroid/hardware/input/InputManager;

    aget v0, v2, v5

    aget v1, v3, v5

    invoke-virtual {p0, v0, v1}, Landroid/hardware/input/InputManager;->remapModifierKey(II)V

    goto :goto_3

    :cond_5
    :goto_2
    iget-object p0, p0, Lcom/samsung/android/settings/inputmethod/ModifierKeysPreferenceController;->mIm:Landroid/hardware/input/InputManager;

    aget v1, v2, v0

    aget v0, v3, v0

    invoke-virtual {p0, v1, v0}, Landroid/hardware/input/InputManager;->remapModifierKey(II)V

    :cond_6
    :goto_3
    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/ModifierKeysPreferenceController;->mParent:Landroidx/fragment/app/Fragment;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/settings/inputmethod/ModifierKeysPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/samsung/android/settings/inputmethod/ModifierKeysPreferenceController;->refreshUi()V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getBackupKeys()Ljava/util/List;
    .locals 0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getLaunchIntent()Landroid/content/Intent;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getSliceHighlightMenuRes()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getValue()Lcom/samsung/android/settings/cube/ControlValue;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic ignoreUserInteraction()V
    .locals 0

    return-void
.end method

.method public bridge synthetic isControllable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 0

    sget-object p0, Lcom/samsung/android/settings/cube/Controllable$ControllableType;->NO_INTERACTION:Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    return-object p0
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Landroidx/preference/SecDropDownPreference;

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/inputmethod/ModifierKeysPreferenceController;->updateVal(Landroidx/preference/Preference;Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public refreshUi()V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/ModifierKeysPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    const-string/jumbo v1, "modifier_keys_caps_lock"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SecDropDownPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/inputmethod/ModifierKeysPreferenceController;->mCapsLockDropDownPref:Landroidx/preference/SecDropDownPreference;

    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/ModifierKeysPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    const-string/jumbo v1, "modifier_keys_ctrl"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SecDropDownPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/inputmethod/ModifierKeysPreferenceController;->mCtrlDropDownPref:Landroidx/preference/SecDropDownPreference;

    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/ModifierKeysPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    const-string/jumbo v1, "modifier_keys_meta"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SecDropDownPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/inputmethod/ModifierKeysPreferenceController;->mMetaDropDownPref:Landroidx/preference/SecDropDownPreference;

    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/ModifierKeysPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    const-string/jumbo v1, "modifier_keys_alt"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SecDropDownPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/inputmethod/ModifierKeysPreferenceController;->mAltDropDownPref:Landroidx/preference/SecDropDownPreference;

    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/ModifierKeysPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    const-string/jumbo v1, "modifier_keys_esc"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SecDropDownPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/inputmethod/ModifierKeysPreferenceController;->mEscDropDownPref:Landroidx/preference/SecDropDownPreference;

    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/ModifierKeysPreferenceController;->mCapsLockDropDownPref:Landroidx/preference/SecDropDownPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/ModifierKeysPreferenceController;->mCtrlDropDownPref:Landroidx/preference/SecDropDownPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/ModifierKeysPreferenceController;->mMetaDropDownPref:Landroidx/preference/SecDropDownPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/ModifierKeysPreferenceController;->mAltDropDownPref:Landroidx/preference/SecDropDownPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/ModifierKeysPreferenceController;->mEscDropDownPref:Landroidx/preference/SecDropDownPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/ModifierKeysPreferenceController;->mCapsLockDropDownPref:Landroidx/preference/SecDropDownPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/inputmethod/ModifierKeysPreferenceController;->modifierKeys:[Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroidx/preference/DropDownPreference;->setEntries([Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/ModifierKeysPreferenceController;->mCapsLockDropDownPref:Landroidx/preference/SecDropDownPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/inputmethod/ModifierKeysPreferenceController;->modifierKeys:[Ljava/lang/CharSequence;

    iput-object v1, v0, Landroidx/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroidx/preference/SecPreferenceUtils;->applySummaryColor(Landroidx/preference/Preference;Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/ModifierKeysPreferenceController;->mCtrlDropDownPref:Landroidx/preference/SecDropDownPreference;

    iget-object v2, p0, Lcom/samsung/android/settings/inputmethod/ModifierKeysPreferenceController;->modifierKeys:[Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroidx/preference/DropDownPreference;->setEntries([Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/ModifierKeysPreferenceController;->mCtrlDropDownPref:Landroidx/preference/SecDropDownPreference;

    iget-object v2, p0, Lcom/samsung/android/settings/inputmethod/ModifierKeysPreferenceController;->modifierKeys:[Ljava/lang/CharSequence;

    iput-object v2, v0, Landroidx/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Landroidx/preference/SecPreferenceUtils;->applySummaryColor(Landroidx/preference/Preference;Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/ModifierKeysPreferenceController;->mMetaDropDownPref:Landroidx/preference/SecDropDownPreference;

    iget-object v2, p0, Lcom/samsung/android/settings/inputmethod/ModifierKeysPreferenceController;->modifierKeys:[Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroidx/preference/DropDownPreference;->setEntries([Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/ModifierKeysPreferenceController;->mMetaDropDownPref:Landroidx/preference/SecDropDownPreference;

    iget-object v2, p0, Lcom/samsung/android/settings/inputmethod/ModifierKeysPreferenceController;->modifierKeys:[Ljava/lang/CharSequence;

    iput-object v2, v0, Landroidx/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Landroidx/preference/SecPreferenceUtils;->applySummaryColor(Landroidx/preference/Preference;Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/ModifierKeysPreferenceController;->mAltDropDownPref:Landroidx/preference/SecDropDownPreference;

    iget-object v2, p0, Lcom/samsung/android/settings/inputmethod/ModifierKeysPreferenceController;->modifierKeys:[Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroidx/preference/DropDownPreference;->setEntries([Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/ModifierKeysPreferenceController;->mAltDropDownPref:Landroidx/preference/SecDropDownPreference;

    iget-object v2, p0, Lcom/samsung/android/settings/inputmethod/ModifierKeysPreferenceController;->modifierKeys:[Ljava/lang/CharSequence;

    iput-object v2, v0, Landroidx/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Landroidx/preference/SecPreferenceUtils;->applySummaryColor(Landroidx/preference/Preference;Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/ModifierKeysPreferenceController;->mEscDropDownPref:Landroidx/preference/SecDropDownPreference;

    iget-object v2, p0, Lcom/samsung/android/settings/inputmethod/ModifierKeysPreferenceController;->modifierKeysEsc:[Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroidx/preference/DropDownPreference;->setEntries([Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/ModifierKeysPreferenceController;->mEscDropDownPref:Landroidx/preference/SecDropDownPreference;

    iget-object v2, p0, Lcom/samsung/android/settings/inputmethod/ModifierKeysPreferenceController;->modifierKeysEsc:[Ljava/lang/CharSequence;

    iput-object v2, v0, Landroidx/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Landroidx/preference/SecPreferenceUtils;->applySummaryColor(Landroidx/preference/Preference;Z)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/settings/inputmethod/ModifierKeysPreferenceController;->mRemappableKeyList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget v5, v2, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/inputmethod/ModifierKeysPreferenceController;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {v1}, Landroid/hardware/input/InputManager;->getModifierKeyRemapping()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, p0, Lcom/samsung/android/settings/inputmethod/ModifierKeysPreferenceController;->mRemappableKeys:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v4}, Lcom/samsung/android/settings/inputmethod/ModifierKeysPreferenceController;->isCtrl(I)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/samsung/android/settings/inputmethod/ModifierKeysPreferenceController;->mRemappableKeys:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v2, p0, Lcom/samsung/android/settings/inputmethod/ModifierKeysPreferenceController;->mCtrlDropDownPref:Landroidx/preference/SecDropDownPreference;

    iget-object v3, p0, Lcom/samsung/android/settings/inputmethod/ModifierKeysPreferenceController;->mKeyNames:[Ljava/lang/String;

    aget-object v3, v3, v5

    invoke-virtual {v2, v3}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/inputmethod/ModifierKeysPreferenceController;->mCtrlDropDownPref:Landroidx/preference/SecDropDownPreference;

    iget-object v3, p0, Lcom/samsung/android/settings/inputmethod/ModifierKeysPreferenceController;->mKeyNames:[Ljava/lang/String;

    aget-object v3, v3, v5

    invoke-virtual {v2, v3}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    invoke-static {v4}, Lcom/samsung/android/settings/inputmethod/ModifierKeysPreferenceController;->isMeta(I)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/samsung/android/settings/inputmethod/ModifierKeysPreferenceController;->mRemappableKeys:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v2, p0, Lcom/samsung/android/settings/inputmethod/ModifierKeysPreferenceController;->mMetaDropDownPref:Landroidx/preference/SecDropDownPreference;

    iget-object v3, p0, Lcom/samsung/android/settings/inputmethod/ModifierKeysPreferenceController;->mKeyNames:[Ljava/lang/String;

    aget-object v3, v3, v5

    invoke-virtual {v2, v3}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/inputmethod/ModifierKeysPreferenceController;->mMetaDropDownPref:Landroidx/preference/SecDropDownPreference;

    iget-object v3, p0, Lcom/samsung/android/settings/inputmethod/ModifierKeysPreferenceController;->mKeyNames:[Ljava/lang/String;

    aget-object v3, v3, v5

    invoke-virtual {v2, v3}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_4
    invoke-static {v4}, Lcom/samsung/android/settings/inputmethod/ModifierKeysPreferenceController;->isAlt(I)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/samsung/android/settings/inputmethod/ModifierKeysPreferenceController;->mRemappableKeys:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v2, p0, Lcom/samsung/android/settings/inputmethod/ModifierKeysPreferenceController;->mAltDropDownPref:Landroidx/preference/SecDropDownPreference;

    iget-object v3, p0, Lcom/samsung/android/settings/inputmethod/ModifierKeysPreferenceController;->mKeyNames:[Ljava/lang/String;

    aget-object v3, v3, v5

    invoke-virtual {v2, v3}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/inputmethod/ModifierKeysPreferenceController;->mAltDropDownPref:Landroidx/preference/SecDropDownPreference;

    iget-object v3, p0, Lcom/samsung/android/settings/inputmethod/ModifierKeysPreferenceController;->mKeyNames:[Ljava/lang/String;

    aget-object v3, v3, v5

    invoke-virtual {v2, v3}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_5
    invoke-static {v4}, Lcom/samsung/android/settings/inputmethod/ModifierKeysPreferenceController;->isCapLock(I)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/samsung/android/settings/inputmethod/ModifierKeysPreferenceController;->mRemappableKeys:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v2, p0, Lcom/samsung/android/settings/inputmethod/ModifierKeysPreferenceController;->mCapsLockDropDownPref:Landroidx/preference/SecDropDownPreference;

    iget-object v3, p0, Lcom/samsung/android/settings/inputmethod/ModifierKeysPreferenceController;->mKeyNames:[Ljava/lang/String;

    aget-object v3, v3, v5

    invoke-virtual {v2, v3}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/inputmethod/ModifierKeysPreferenceController;->mCapsLockDropDownPref:Landroidx/preference/SecDropDownPreference;

    iget-object v3, p0, Lcom/samsung/android/settings/inputmethod/ModifierKeysPreferenceController;->mKeyNames:[Ljava/lang/String;

    aget-object v3, v3, v5

    invoke-virtual {v2, v3}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_6
    invoke-static {v4}, Lcom/samsung/android/settings/inputmethod/ModifierKeysPreferenceController;->isEsc(I)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/settings/inputmethod/ModifierKeysPreferenceController;->mRemappableKeys:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/inputmethod/ModifierKeysPreferenceController;->mEscDropDownPref:Landroidx/preference/SecDropDownPreference;

    iget-object v3, p0, Lcom/samsung/android/settings/inputmethod/ModifierKeysPreferenceController;->mKeyNames:[Ljava/lang/String;

    aget-object v3, v3, v5

    invoke-virtual {v2, v3}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/inputmethod/ModifierKeysPreferenceController;->mEscDropDownPref:Landroidx/preference/SecDropDownPreference;

    iget-object v3, p0, Lcom/samsung/android/settings/inputmethod/ModifierKeysPreferenceController;->mKeyNames:[Ljava/lang/String;

    aget-object v3, v3, v5

    invoke-virtual {v2, v3}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_7
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    goto :goto_2

    :cond_9
    iget-object v3, p0, Lcom/samsung/android/settings/inputmethod/ModifierKeysPreferenceController;->mRemappableKeys:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Lcom/samsung/android/settings/inputmethod/ModifierKeysPreferenceController;->isCtrl(I)Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v2, p0, Lcom/samsung/android/settings/inputmethod/ModifierKeysPreferenceController;->mCtrlDropDownPref:Landroidx/preference/SecDropDownPreference;

    iget-object v4, p0, Lcom/samsung/android/settings/inputmethod/ModifierKeysPreferenceController;->mKeyNames:[Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-virtual {v2, v4}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/inputmethod/ModifierKeysPreferenceController;->mCtrlDropDownPref:Landroidx/preference/SecDropDownPreference;

    iget-object v4, p0, Lcom/samsung/android/settings/inputmethod/ModifierKeysPreferenceController;->mKeyNames:[Ljava/lang/String;

    aget-object v3, v4, v3

    invoke-virtual {v2, v3}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_a
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Lcom/samsung/android/settings/inputmethod/ModifierKeysPreferenceController;->isMeta(I)Z

    move-result v4

    if-eqz v4, :cond_b

    iget-object v2, p0, Lcom/samsung/android/settings/inputmethod/ModifierKeysPreferenceController;->mMetaDropDownPref:Landroidx/preference/SecDropDownPreference;

    iget-object v4, p0, Lcom/samsung/android/settings/inputmethod/ModifierKeysPreferenceController;->mKeyNames:[Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-virtual {v2, v4}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/inputmethod/ModifierKeysPreferenceController;->mMetaDropDownPref:Landroidx/preference/SecDropDownPreference;

    iget-object v4, p0, Lcom/samsung/android/settings/inputmethod/ModifierKeysPreferenceController;->mKeyNames:[Ljava/lang/String;

    aget-object v3, v4, v3

    invoke-virtual {v2, v3}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_b
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Lcom/samsung/android/settings/inputmethod/ModifierKeysPreferenceController;->isAlt(I)Z

    move-result v4

    if-eqz v4, :cond_c

    iget-object v2, p0, Lcom/samsung/android/settings/inputmethod/ModifierKeysPreferenceController;->mAltDropDownPref:Landroidx/preference/SecDropDownPreference;

    iget-object v4, p0, Lcom/samsung/android/settings/inputmethod/ModifierKeysPreferenceController;->mKeyNames:[Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-virtual {v2, v4}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/inputmethod/ModifierKeysPreferenceController;->mAltDropDownPref:Landroidx/preference/SecDropDownPreference;

    iget-object v4, p0, Lcom/samsung/android/settings/inputmethod/ModifierKeysPreferenceController;->mKeyNames:[Ljava/lang/String;

    aget-object v3, v4, v3

    invoke-virtual {v2, v3}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_c
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Lcom/samsung/android/settings/inputmethod/ModifierKeysPreferenceController;->isCapLock(I)Z

    move-result v4

    if-eqz v4, :cond_d

    iget-object v2, p0, Lcom/samsung/android/settings/inputmethod/ModifierKeysPreferenceController;->mCapsLockDropDownPref:Landroidx/preference/SecDropDownPreference;

    iget-object v4, p0, Lcom/samsung/android/settings/inputmethod/ModifierKeysPreferenceController;->mKeyNames:[Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-virtual {v2, v4}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/inputmethod/ModifierKeysPreferenceController;->mCapsLockDropDownPref:Landroidx/preference/SecDropDownPreference;

    iget-object v4, p0, Lcom/samsung/android/settings/inputmethod/ModifierKeysPreferenceController;->mKeyNames:[Ljava/lang/String;

    aget-object v3, v4, v3

    invoke-virtual {v2, v3}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_d
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/settings/inputmethod/ModifierKeysPreferenceController;->isEsc(I)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/samsung/android/settings/inputmethod/ModifierKeysPreferenceController;->mEscDropDownPref:Landroidx/preference/SecDropDownPreference;

    iget-object v4, p0, Lcom/samsung/android/settings/inputmethod/ModifierKeysPreferenceController;->mKeyNames:[Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-virtual {v2, v4}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/inputmethod/ModifierKeysPreferenceController;->mEscDropDownPref:Landroidx/preference/SecDropDownPreference;

    iget-object v4, p0, Lcom/samsung/android/settings/inputmethod/ModifierKeysPreferenceController;->mKeyNames:[Ljava/lang/String;

    aget-object v3, v4, v3

    invoke-virtual {v2, v3}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_e
    return-void
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public setFragment(Landroidx/fragment/app/Fragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/inputmethod/ModifierKeysPreferenceController;->mParent:Landroidx/fragment/app/Fragment;

    return-void
.end method

.method public bridge synthetic setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
