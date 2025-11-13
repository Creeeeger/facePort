.class public Landroid/view/KeyCharacterMap;
.super Ljava/lang/Object;
.source "KeyCharacterMap.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/KeyCharacterMap$FallbackAction;,
        Landroid/view/KeyCharacterMap$UnavailableException;,
        Landroid/view/KeyCharacterMap$KeyData;
    }
.end annotation


# static fields
.field private static final greylist-max-o ACCENT_ACUTE:I = 0xb4

.field private static final greylist-max-o ACCENT_BREVE:I = 0x2d8

.field private static final greylist-max-o ACCENT_CARON:I = 0x2c7

.field private static final greylist-max-o ACCENT_CEDILLA:I = 0xb8

.field private static final greylist-max-o ACCENT_CIRCUMFLEX:I = 0x2c6

.field private static final greylist-max-o ACCENT_CIRCUMFLEX_LEGACY:I = 0x5e

.field private static final greylist-max-o ACCENT_COMMA_ABOVE:I = 0x1fbd

.field private static final greylist-max-o ACCENT_COMMA_ABOVE_RIGHT:I = 0x2bc

.field private static final greylist-max-o ACCENT_DOT_ABOVE:I = 0x2d9

.field private static final greylist-max-o ACCENT_DOT_BELOW:I = 0x2e

.field private static final greylist-max-o ACCENT_DOUBLE_ACUTE:I = 0x2dd

.field private static final greylist-max-o ACCENT_GRAVE:I = 0x2cb

.field private static final greylist-max-o ACCENT_GRAVE_LEGACY:I = 0x60

.field private static final greylist-max-o ACCENT_HOOK_ABOVE:I = 0x2c0

.field private static final greylist-max-o ACCENT_HORN:I = 0x27

.field private static final greylist-max-o ACCENT_MACRON:I = 0xaf

.field private static final greylist-max-o ACCENT_MACRON_BELOW:I = 0x2cd

.field private static final greylist-max-o ACCENT_OGONEK:I = 0x2db

.field private static final greylist-max-o ACCENT_REVERSED_COMMA_ABOVE:I = 0x2bd

.field private static final greylist-max-o ACCENT_RING_ABOVE:I = 0x2da

.field private static final greylist-max-o ACCENT_STROKE:I = 0x2d

.field private static final greylist-max-o ACCENT_TILDE:I = 0x2dc

.field private static final greylist-max-o ACCENT_TILDE_LEGACY:I = 0x7e

.field private static final greylist-max-o ACCENT_TURNED_COMMA_ABOVE:I = 0x2bb

.field private static final greylist-max-o ACCENT_UMLAUT:I = 0xa8

.field private static final greylist-max-o ACCENT_VERTICAL_LINE_ABOVE:I = 0x2c8

.field private static final greylist-max-o ACCENT_VERTICAL_LINE_BELOW:I = 0x2cc

.field public static final whitelist ALPHA:I = 0x3

.field public static final whitelist BUILT_IN_KEYBOARD:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final greylist-max-o CHAR_SPACE:I = 0x20

.field public static final whitelist COMBINING_ACCENT:I = -0x80000000

.field public static final whitelist COMBINING_ACCENT_MASK:I = 0x7fffffff

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/KeyCharacterMap;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist FULL:I = 0x4

.field public static final whitelist HEX_INPUT:C = '\uef00'

.field public static final whitelist MODIFIER_BEHAVIOR_CHORDED:I = 0x0

.field public static final whitelist MODIFIER_BEHAVIOR_CHORDED_OR_TOGGLED:I = 0x1

.field public static final whitelist NUMERIC:I = 0x1

.field public static final whitelist PICKER_DIALOG_INPUT:C = '\uef01'

.field public static final whitelist PREDICTIVE:I = 0x2

.field public static final whitelist SPECIAL_FUNCTION:I = 0x5

.field public static final whitelist VIRTUAL_KEYBOARD:I = -0x1

.field private static final greylist-max-o sAccentToCombining:Landroid/util/SparseIntArray;

.field private static final greylist-max-o sCombiningToAccent:Landroid/util/SparseIntArray;

.field private static final greylist-max-o sDeadKeyBuilder:Ljava/lang/StringBuilder;

.field private static final greylist-max-o sDeadKeyCache:Landroid/util/SparseIntArray;


# instance fields
.field private greylist-max-o mPtr:J


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 10

    .line 192
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Landroid/view/KeyCharacterMap;->sCombiningToAccent:Landroid/util/SparseIntArray;

    .line 193
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v1, Landroid/view/KeyCharacterMap;->sAccentToCombining:Landroid/util/SparseIntArray;

    .line 195
    const/16 v2, 0x300

    const/16 v3, 0x2cb

    invoke-static {v2, v3}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    .line 196
    const/16 v4, 0x301

    const/16 v5, 0xb4

    invoke-static {v4, v5}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    .line 197
    const/16 v4, 0x302

    const/16 v6, 0x2c6

    invoke-static {v4, v6}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    .line 198
    const/16 v6, 0x303

    const/16 v7, 0x2dc

    invoke-static {v6, v7}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    .line 199
    const/16 v7, 0x304

    const/16 v8, 0xaf

    invoke-static {v7, v8}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    .line 200
    const/16 v7, 0x306

    const/16 v8, 0x2d8

    invoke-static {v7, v8}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    .line 201
    const/16 v7, 0x307

    const/16 v8, 0x2d9

    invoke-static {v7, v8}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    .line 202
    const/16 v7, 0x308

    const/16 v8, 0xa8

    invoke-static {v7, v8}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    .line 203
    const/16 v7, 0x309

    const/16 v8, 0x2c0

    invoke-static {v7, v8}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    .line 204
    const/16 v7, 0x30a

    const/16 v8, 0x2da

    invoke-static {v7, v8}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    .line 205
    const/16 v7, 0x30b

    const/16 v8, 0x2dd

    invoke-static {v7, v8}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    .line 206
    const/16 v7, 0x30c

    const/16 v8, 0x2c7

    invoke-static {v7, v8}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    .line 207
    const/16 v7, 0x30d

    const/16 v8, 0x2c8

    invoke-static {v7, v8}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    .line 212
    const/16 v7, 0x312

    const/16 v8, 0x2bb

    invoke-static {v7, v8}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    .line 213
    const/16 v7, 0x313

    const/16 v8, 0x1fbd

    invoke-static {v7, v8}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    .line 214
    const/16 v7, 0x314

    const/16 v9, 0x2bd

    invoke-static {v7, v9}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    .line 215
    const/16 v7, 0x315

    const/16 v9, 0x2bc

    invoke-static {v7, v9}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    .line 216
    const/16 v7, 0x31b

    const/16 v9, 0x27

    invoke-static {v7, v9}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    .line 217
    const/16 v7, 0x323

    const/16 v9, 0x2e

    invoke-static {v7, v9}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    .line 219
    const/16 v7, 0x327

    const/16 v9, 0xb8

    invoke-static {v7, v9}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    .line 220
    const/16 v7, 0x328

    const/16 v9, 0x2db

    invoke-static {v7, v9}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    .line 221
    const/16 v7, 0x329

    const/16 v9, 0x2cc

    invoke-static {v7, v9}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    .line 222
    const/16 v7, 0x331

    const/16 v9, 0x2cd

    invoke-static {v7, v9}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    .line 223
    const/16 v7, 0x335

    const/16 v9, 0x2d

    invoke-static {v7, v9}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    .line 229
    const/16 v7, 0x340

    invoke-virtual {v0, v7, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 230
    const/16 v3, 0x341

    invoke-virtual {v0, v3, v5}, Landroid/util/SparseIntArray;->append(II)V

    .line 231
    const/16 v3, 0x343

    invoke-virtual {v0, v3, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 234
    const/16 v0, 0x60

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 235
    const/16 v0, 0x5e

    invoke-virtual {v1, v0, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 236
    const/16 v0, 0x7e

    invoke-virtual {v1, v0, v6}, Landroid/util/SparseIntArray;->append(II)V

    .line 249
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Landroid/view/KeyCharacterMap;->sDeadKeyCache:Landroid/util/SparseIntArray;

    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Landroid/view/KeyCharacterMap;->sDeadKeyBuilder:Ljava/lang/StringBuilder;

    .line 254
    const/16 v0, 0x44

    const/16 v1, 0x110

    invoke-static {v9, v0, v1}, Landroid/view/KeyCharacterMap;->addDeadKey(III)V

    .line 255
    const/16 v0, 0x47

    const/16 v1, 0x1e4

    invoke-static {v9, v0, v1}, Landroid/view/KeyCharacterMap;->addDeadKey(III)V

    .line 256
    const/16 v0, 0x48

    const/16 v1, 0x126

    invoke-static {v9, v0, v1}, Landroid/view/KeyCharacterMap;->addDeadKey(III)V

    .line 257
    const/16 v0, 0x49

    const/16 v1, 0x197

    invoke-static {v9, v0, v1}, Landroid/view/KeyCharacterMap;->addDeadKey(III)V

    .line 258
    const/16 v0, 0x4c

    const/16 v1, 0x141

    invoke-static {v9, v0, v1}, Landroid/view/KeyCharacterMap;->addDeadKey(III)V

    .line 259
    const/16 v0, 0x4f

    const/16 v1, 0xd8

    invoke-static {v9, v0, v1}, Landroid/view/KeyCharacterMap;->addDeadKey(III)V

    .line 260
    const/16 v0, 0x54

    const/16 v1, 0x166

    invoke-static {v9, v0, v1}, Landroid/view/KeyCharacterMap;->addDeadKey(III)V

    .line 261
    const/16 v0, 0x64

    const/16 v1, 0x111

    invoke-static {v9, v0, v1}, Landroid/view/KeyCharacterMap;->addDeadKey(III)V

    .line 262
    const/16 v0, 0x67

    const/16 v1, 0x1e5

    invoke-static {v9, v0, v1}, Landroid/view/KeyCharacterMap;->addDeadKey(III)V

    .line 263
    const/16 v0, 0x68

    const/16 v1, 0x127

    invoke-static {v9, v0, v1}, Landroid/view/KeyCharacterMap;->addDeadKey(III)V

    .line 264
    const/16 v0, 0x69

    const/16 v1, 0x268

    invoke-static {v9, v0, v1}, Landroid/view/KeyCharacterMap;->addDeadKey(III)V

    .line 265
    const/16 v0, 0x6c

    const/16 v1, 0x142

    invoke-static {v9, v0, v1}, Landroid/view/KeyCharacterMap;->addDeadKey(III)V

    .line 266
    const/16 v0, 0x6f

    const/16 v1, 0xf8

    invoke-static {v9, v0, v1}, Landroid/view/KeyCharacterMap;->addDeadKey(III)V

    .line 267
    const/16 v0, 0x74

    const/16 v1, 0x167

    invoke-static {v9, v0, v1}, Landroid/view/KeyCharacterMap;->addDeadKey(III)V

    .line 279
    new-instance v0, Landroid/view/KeyCharacterMap$1;

    invoke-direct {v0}, Landroid/view/KeyCharacterMap$1;-><init>()V

    sput-object v0, Landroid/view/KeyCharacterMap;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor greylist-max-r <init>(J)V
    .locals 0
    .param p1, "ptr"    # J

    .line 318
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 319
    iput-wide p1, p0, Landroid/view/KeyCharacterMap;->mPtr:J

    .line 320
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 306
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 307
    if-eqz p1, :cond_1

    .line 310
    invoke-static {p1}, Landroid/view/KeyCharacterMap;->nativeReadFromParcel(Landroid/os/Parcel;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/KeyCharacterMap;->mPtr:J

    .line 311
    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 314
    return-void

    .line 312
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not read KeyCharacterMap from parcel."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 308
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "parcel must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/view/KeyCharacterMap-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/KeyCharacterMap;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private static greylist-max-o addCombining(II)V
    .locals 1
    .param p0, "combining"    # I
    .param p1, "accent"    # I

    .line 240
    sget-object v0, Landroid/view/KeyCharacterMap;->sCombiningToAccent:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p0, p1}, Landroid/util/SparseIntArray;->append(II)V

    .line 241
    sget-object v0, Landroid/view/KeyCharacterMap;->sAccentToCombining:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p0}, Landroid/util/SparseIntArray;->append(II)V

    .line 242
    return-void
.end method

.method private static greylist-max-o addDeadKey(III)V
    .locals 3
    .param p0, "accent"    # I
    .param p1, "c"    # I
    .param p2, "result"    # I

    .line 271
    sget-object v0, Landroid/view/KeyCharacterMap;->sAccentToCombining:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 272
    .local v0, "combining":I
    if-eqz v0, :cond_0

    .line 275
    shl-int/lit8 v1, v0, 0x10

    or-int/2addr v1, p1

    .line 276
    .local v1, "combination":I
    sget-object v2, Landroid/view/KeyCharacterMap;->sDeadKeyCache:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 277
    return-void

    .line 273
    .end local v1    # "combination":I
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Invalid dead key declaration."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static whitelist deviceHasKey(I)Z
    .locals 3
    .param p0, "keyCode"    # I

    .line 719
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p0, v1, v2

    invoke-virtual {v0, v1}, Landroid/hardware/input/InputManager;->deviceHasKeys([I)[Z

    move-result-object v0

    aget-boolean v0, v0, v2

    return v0
.end method

.method public static whitelist deviceHasKeys([I)[Z
    .locals 1
    .param p0, "keyCodes"    # [I

    .line 732
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/hardware/input/InputManager;->deviceHasKeys([I)[Z

    move-result-object v0

    return-object v0
.end method

.method public static whitelist getDeadChar(II)I
    .locals 8
    .param p0, "accent"    # I
    .param p1, "c"    # I

    .line 509
    if-eq p1, p0, :cond_4

    const/16 v0, 0x20

    if-ne v0, p1, :cond_0

    goto :goto_1

    .line 516
    :cond_0
    sget-object v0, Landroid/view/KeyCharacterMap;->sAccentToCombining:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 517
    .local v0, "combining":I
    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 518
    return v1

    .line 521
    :cond_1
    shl-int/lit8 v2, v0, 0x10

    or-int/2addr v2, p1

    .line 523
    .local v2, "combination":I
    sget-object v3, Landroid/view/KeyCharacterMap;->sDeadKeyCache:Landroid/util/SparseIntArray;

    monitor-enter v3

    .line 524
    const/4 v4, -0x1

    :try_start_0
    invoke-virtual {v3, v2, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v5

    .line 525
    .local v5, "combined":I
    if-ne v5, v4, :cond_3

    .line 526
    sget-object v4, Landroid/view/KeyCharacterMap;->sDeadKeyBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 527
    int-to-char v6, p1

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 528
    int-to-char v6, v0

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 529
    sget-object v6, Ljava/text/Normalizer$Form;->NFC:Ljava/text/Normalizer$Form;

    invoke-static {v4, v6}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object v4

    .line 530
    .local v4, "result":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v4, v1, v6}, Ljava/lang/String;->codePointCount(II)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    .line 531
    invoke-virtual {v4, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    goto :goto_0

    :cond_2
    nop

    :goto_0
    move v5, v1

    .line 532
    invoke-virtual {v3, v2, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 534
    .end local v4    # "result":Ljava/lang/String;
    :cond_3
    monitor-exit v3

    .line 535
    return v5

    .line 534
    .end local v5    # "combined":I
    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 513
    .end local v0    # "combining":I
    .end local v2    # "combination":I
    :cond_4
    :goto_1
    return p0
.end method

.method public static whitelist load(I)Landroid/view/KeyCharacterMap;
    .locals 5
    .param p0, "deviceId"    # I

    .line 352
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    .line 353
    .local v0, "im":Landroid/hardware/input/InputManager;
    invoke-virtual {v0, p0}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v1

    .line 354
    .local v1, "inputDevice":Landroid/view/InputDevice;
    if-nez v1, :cond_1

    .line 355
    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v1

    .line 356
    if-eqz v1, :cond_0

    goto :goto_0

    .line 357
    :cond_0
    new-instance v2, Landroid/view/KeyCharacterMap$UnavailableException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not load key character map for device "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/view/KeyCharacterMap$UnavailableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 361
    :cond_1
    :goto_0
    invoke-virtual {v1}, Landroid/view/InputDevice;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v2

    return-object v2
.end method

.method private static native greylist-max-o nativeDispose(J)V
.end method

.method private static native blacklist nativeEquals(JJ)Z
.end method

.method private static native greylist-max-o nativeGetCharacter(JII)C
.end method

.method private static native greylist-max-o nativeGetDisplayLabel(JI)C
.end method

.method private static native greylist-max-o nativeGetEvents(J[C)[Landroid/view/KeyEvent;
.end method

.method private static native greylist-max-o nativeGetFallbackAction(JIILandroid/view/KeyCharacterMap$FallbackAction;)Z
.end method

.method private static native greylist-max-o nativeGetKeyboardType(J)I
.end method

.method private static native greylist-max-o nativeGetMatch(JI[CI)C
.end method

.method private static native greylist-max-o nativeGetNumber(JI)C
.end method

.method private static native blacklist nativeObtainEmptyKeyCharacterMap(I)Landroid/view/KeyCharacterMap;
.end method

.method private static native greylist-max-o nativeReadFromParcel(Landroid/os/Parcel;)J
.end method

.method private static native greylist-max-o nativeWriteToParcel(JLandroid/os/Parcel;)V
.end method

.method public static blacklist obtainEmptyMap(I)Landroid/view/KeyCharacterMap;
    .locals 1
    .param p0, "deviceId"    # I

    .line 339
    invoke-static {p0}, Landroid/view/KeyCharacterMap;->nativeObtainEmptyKeyCharacterMap(I)Landroid/view/KeyCharacterMap;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 745
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "obj"    # Ljava/lang/Object;

    .line 750
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    instance-of v1, p1, Landroid/view/KeyCharacterMap;

    if-nez v1, :cond_0

    goto :goto_1

    .line 753
    :cond_0
    move-object v1, p1

    check-cast v1, Landroid/view/KeyCharacterMap;

    .line 754
    .local v1, "peer":Landroid/view/KeyCharacterMap;
    iget-wide v2, p0, Landroid/view/KeyCharacterMap;->mPtr:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_2

    iget-wide v6, v1, Landroid/view/KeyCharacterMap;->mPtr:J

    cmp-long v4, v6, v4

    if-nez v4, :cond_1

    goto :goto_0

    .line 757
    :cond_1
    invoke-static {v2, v3, v6, v7}, Landroid/view/KeyCharacterMap;->nativeEquals(JJ)Z

    move-result v0

    return v0

    .line 755
    :cond_2
    :goto_0
    iget-wide v4, v1, Landroid/view/KeyCharacterMap;->mPtr:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    const/4 v0, 0x1

    :cond_3
    return v0

    .line 751
    .end local v1    # "peer":Landroid/view/KeyCharacterMap;
    :cond_4
    :goto_1
    return v0
.end method

.method protected whitelist test-api finalize()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 324
    iget-wide v0, p0, Landroid/view/KeyCharacterMap;->mPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 325
    invoke-static {v0, v1}, Landroid/view/KeyCharacterMap;->nativeDispose(J)V

    .line 326
    iput-wide v2, p0, Landroid/view/KeyCharacterMap;->mPtr:J

    .line 328
    :cond_0
    return-void
.end method

.method public whitelist get(II)I
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "metaState"    # I

    .line 386
    invoke-static {p2}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result p2

    .line 387
    iget-wide v0, p0, Landroid/view/KeyCharacterMap;->mPtr:J

    invoke-static {v0, v1, p1, p2}, Landroid/view/KeyCharacterMap;->nativeGetCharacter(JII)C

    move-result v0

    .line 389
    .local v0, "ch":C
    sget-object v1, Landroid/view/KeyCharacterMap;->sCombiningToAccent:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    .line 390
    .local v1, "map":I
    if-eqz v1, :cond_0

    .line 391
    const/high16 v2, -0x80000000

    or-int/2addr v2, v1

    return v2

    .line 393
    :cond_0
    return v0
.end method

.method public whitelist getDisplayLabel(I)C
    .locals 2
    .param p1, "keyCode"    # I

    .line 495
    iget-wide v0, p0, Landroid/view/KeyCharacterMap;->mPtr:J

    invoke-static {v0, v1, p1}, Landroid/view/KeyCharacterMap;->nativeGetDisplayLabel(JI)C

    move-result v0

    return v0
.end method

.method public whitelist getEvents([C)[Landroid/view/KeyEvent;
    .locals 2
    .param p1, "chars"    # [C

    .line 626
    if-eqz p1, :cond_0

    .line 629
    iget-wide v0, p0, Landroid/view/KeyCharacterMap;->mPtr:J

    invoke-static {v0, v1, p1}, Landroid/view/KeyCharacterMap;->nativeGetEvents(J[C)[Landroid/view/KeyEvent;

    move-result-object v0

    return-object v0

    .line 627
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "chars must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o getFallbackAction(II)Landroid/view/KeyCharacterMap$FallbackAction;
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "metaState"    # I

    .line 415
    invoke-static {}, Landroid/view/KeyCharacterMap$FallbackAction;->obtain()Landroid/view/KeyCharacterMap$FallbackAction;

    move-result-object v0

    .line 416
    .local v0, "action":Landroid/view/KeyCharacterMap$FallbackAction;
    invoke-static {p2}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result p2

    .line 417
    iget-wide v1, p0, Landroid/view/KeyCharacterMap;->mPtr:J

    invoke-static {v1, v2, p1, p2, v0}, Landroid/view/KeyCharacterMap;->nativeGetFallbackAction(JIILandroid/view/KeyCharacterMap$FallbackAction;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 418
    iget v1, v0, Landroid/view/KeyCharacterMap$FallbackAction;->metaState:I

    invoke-static {v1}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v1

    iput v1, v0, Landroid/view/KeyCharacterMap$FallbackAction;->metaState:I

    .line 419
    return-object v0

    .line 421
    :cond_0
    invoke-virtual {v0}, Landroid/view/KeyCharacterMap$FallbackAction;->recycle()V

    .line 422
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist getKeyData(ILandroid/view/KeyCharacterMap$KeyData;)Z
    .locals 6
    .param p1, "keyCode"    # I
    .param p2, "results"    # Landroid/view/KeyCharacterMap$KeyData;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 583
    iget-object v0, p2, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    array-length v0, v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_1

    .line 588
    iget-wide v0, p0, Landroid/view/KeyCharacterMap;->mPtr:J

    invoke-static {v0, v1, p1}, Landroid/view/KeyCharacterMap;->nativeGetDisplayLabel(JI)C

    move-result v0

    .line 589
    .local v0, "displayLabel":C
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 590
    return v1

    .line 593
    :cond_0
    iput-char v0, p2, Landroid/view/KeyCharacterMap$KeyData;->displayLabel:C

    .line 594
    iget-wide v2, p0, Landroid/view/KeyCharacterMap;->mPtr:J

    invoke-static {v2, v3, p1}, Landroid/view/KeyCharacterMap;->nativeGetNumber(JI)C

    move-result v2

    iput-char v2, p2, Landroid/view/KeyCharacterMap$KeyData;->number:C

    .line 595
    iget-object v2, p2, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    iget-wide v3, p0, Landroid/view/KeyCharacterMap;->mPtr:J

    invoke-static {v3, v4, p1, v1}, Landroid/view/KeyCharacterMap;->nativeGetCharacter(JII)C

    move-result v3

    aput-char v3, v2, v1

    .line 596
    iget-object v1, p2, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    iget-wide v2, p0, Landroid/view/KeyCharacterMap;->mPtr:J

    const/4 v4, 0x1

    invoke-static {v2, v3, p1, v4}, Landroid/view/KeyCharacterMap;->nativeGetCharacter(JII)C

    move-result v2

    aput-char v2, v1, v4

    .line 597
    iget-object v1, p2, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    iget-wide v2, p0, Landroid/view/KeyCharacterMap;->mPtr:J

    const/4 v5, 0x2

    invoke-static {v2, v3, p1, v5}, Landroid/view/KeyCharacterMap;->nativeGetCharacter(JII)C

    move-result v2

    aput-char v2, v1, v5

    .line 598
    iget-object v1, p2, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    iget-wide v2, p0, Landroid/view/KeyCharacterMap;->mPtr:J

    const/4 v5, 0x3

    invoke-static {v2, v3, p1, v5}, Landroid/view/KeyCharacterMap;->nativeGetCharacter(JII)C

    move-result v2

    aput-char v2, v1, v5

    .line 600
    return v4

    .line 584
    .end local v0    # "displayLabel":C
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string/jumbo v1, "results.meta.length must be >= 4"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getKeyboardType()I
    .locals 2

    .line 666
    iget-wide v0, p0, Landroid/view/KeyCharacterMap;->mPtr:J

    invoke-static {v0, v1}, Landroid/view/KeyCharacterMap;->nativeGetKeyboardType(J)I

    move-result v0

    return v0
.end method

.method public whitelist getMatch(I[C)C
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "chars"    # [C

    .line 464
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/view/KeyCharacterMap;->getMatch(I[CI)C

    move-result v0

    return v0
.end method

.method public whitelist getMatch(I[CI)C
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "chars"    # [C
    .param p3, "metaState"    # I

    .line 479
    if-eqz p2, :cond_0

    .line 483
    invoke-static {p3}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result p3

    .line 484
    iget-wide v0, p0, Landroid/view/KeyCharacterMap;->mPtr:J

    invoke-static {v0, v1, p1, p2, p3}, Landroid/view/KeyCharacterMap;->nativeGetMatch(JI[CI)C

    move-result v0

    return v0

    .line 480
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "chars must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getModifierBehavior()I
    .locals 1

    .line 702
    invoke-virtual {p0}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 707
    const/4 v0, 0x1

    return v0

    .line 705
    :pswitch_0
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public whitelist getNumber(I)C
    .locals 2
    .param p1, "keyCode"    # I

    .line 447
    iget-wide v0, p0, Landroid/view/KeyCharacterMap;->mPtr:J

    invoke-static {v0, v1, p1}, Landroid/view/KeyCharacterMap;->nativeGetNumber(JI)C

    move-result v0

    return v0
.end method

.method public whitelist isPrintingKey(I)Z
    .locals 2
    .param p1, "keyCode"    # I

    .line 639
    iget-wide v0, p0, Landroid/view/KeyCharacterMap;->mPtr:J

    invoke-static {v0, v1, p1}, Landroid/view/KeyCharacterMap;->nativeGetDisplayLabel(JI)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->getType(C)I

    move-result v0

    .line 641
    .local v0, "type":I
    packed-switch v0, :pswitch_data_0

    .line 650
    const/4 v1, 0x1

    return v1

    .line 648
    :pswitch_0
    const/4 v1, 0x0

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 737
    if-eqz p1, :cond_0

    .line 740
    iget-wide v0, p0, Landroid/view/KeyCharacterMap;->mPtr:J

    invoke-static {v0, v1, p1}, Landroid/view/KeyCharacterMap;->nativeWriteToParcel(JLandroid/os/Parcel;)V

    .line 741
    return-void

    .line 738
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "parcel must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
