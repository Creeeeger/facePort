.class final Landroid/hardware/input/PhysicalKeyLayout;
.super Ljava/lang/Object;
.source "PhysicalKeyLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;,
        Landroid/hardware/input/PhysicalKeyLayout$EnterKey;,
        Landroid/hardware/input/PhysicalKeyLayout$KeyGlyph;
    }
.end annotation


# static fields
.field private static final blacklist DEFAULT_KEYCODE_FOR_SCANCODE:Landroid/util/SparseIntArray;

.field private static final blacklist SCANCODE_0:I = 0xb

.field private static final blacklist SCANCODE_1:I = 0x2

.field private static final blacklist SCANCODE_2:I = 0x3

.field private static final blacklist SCANCODE_3:I = 0x4

.field private static final blacklist SCANCODE_4:I = 0x5

.field private static final blacklist SCANCODE_5:I = 0x6

.field private static final blacklist SCANCODE_6:I = 0x7

.field private static final blacklist SCANCODE_7:I = 0x8

.field private static final blacklist SCANCODE_8:I = 0x9

.field private static final blacklist SCANCODE_9:I = 0xa

.field private static final blacklist SCANCODE_A:I = 0x1e

.field private static final blacklist SCANCODE_APOSTROPHE:I = 0x28

.field private static final blacklist SCANCODE_B:I = 0x30

.field private static final blacklist SCANCODE_BACKSLASH1:I = 0x2b

.field private static final blacklist SCANCODE_BACKSLASH2:I = 0x56

.field private static final blacklist SCANCODE_C:I = 0x2e

.field private static final blacklist SCANCODE_COMMA:I = 0x33

.field private static final blacklist SCANCODE_D:I = 0x20

.field private static final blacklist SCANCODE_E:I = 0x12

.field private static final blacklist SCANCODE_EQUALS:I = 0xd

.field private static final blacklist SCANCODE_F:I = 0x21

.field private static final blacklist SCANCODE_G:I = 0x22

.field private static final blacklist SCANCODE_GRAVE:I = 0x29

.field private static final blacklist SCANCODE_H:I = 0x23

.field private static final blacklist SCANCODE_I:I = 0x17

.field private static final blacklist SCANCODE_J:I = 0x24

.field private static final blacklist SCANCODE_K:I = 0x25

.field private static final blacklist SCANCODE_L:I = 0x26

.field private static final blacklist SCANCODE_LEFT_BRACKET:I = 0x1a

.field private static final blacklist SCANCODE_M:I = 0x32

.field private static final blacklist SCANCODE_MINUS:I = 0xc

.field private static final blacklist SCANCODE_N:I = 0x31

.field private static final blacklist SCANCODE_O:I = 0x18

.field private static final blacklist SCANCODE_P:I = 0x19

.field private static final blacklist SCANCODE_PERIOD:I = 0x34

.field private static final blacklist SCANCODE_Q:I = 0x10

.field private static final blacklist SCANCODE_R:I = 0x13

.field private static final blacklist SCANCODE_RIGHT_BRACKET:I = 0x1b

.field private static final blacklist SCANCODE_RO:I = 0x59

.field private static final blacklist SCANCODE_S:I = 0x1f

.field private static final blacklist SCANCODE_SEMICOLON:I = 0x27

.field private static final blacklist SCANCODE_SLASH:I = 0x35

.field private static final blacklist SCANCODE_T:I = 0x14

.field private static final blacklist SCANCODE_U:I = 0x16

.field private static final blacklist SCANCODE_V:I = 0x2f

.field private static final blacklist SCANCODE_W:I = 0x11

.field private static final blacklist SCANCODE_X:I = 0x2d

.field private static final blacklist SCANCODE_Y:I = 0x15

.field private static final blacklist SCANCODE_YEN:I = 0x7c

.field private static final blacklist SCANCODE_Z:I = 0x2c

.field private static final blacklist TAG:Ljava/lang/String; = "KeyboardLayoutPreview"


# instance fields
.field private blacklist mEnterKey:Landroid/hardware/input/PhysicalKeyLayout$EnterKey;

.field private blacklist mKeys:[[Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smgetKeyText(Landroid/view/KeyCharacterMap;II)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/hardware/input/PhysicalKeyLayout;->getKeyText(Landroid/view/KeyCharacterMap;II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 15

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Landroid/hardware/input/PhysicalKeyLayout;->DEFAULT_KEYCODE_FOR_SCANCODE:Landroid/util/SparseIntArray;

    sget-object v0, Landroid/hardware/input/PhysicalKeyLayout;->DEFAULT_KEYCODE_FOR_SCANCODE:Landroid/util/SparseIntArray;

    const/4 v1, 0x2

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/hardware/input/PhysicalKeyLayout;->DEFAULT_KEYCODE_FOR_SCANCODE:Landroid/util/SparseIntArray;

    const/4 v1, 0x3

    const/16 v3, 0x9

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/hardware/input/PhysicalKeyLayout;->DEFAULT_KEYCODE_FOR_SCANCODE:Landroid/util/SparseIntArray;

    const/4 v1, 0x4

    const/16 v4, 0xa

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/hardware/input/PhysicalKeyLayout;->DEFAULT_KEYCODE_FOR_SCANCODE:Landroid/util/SparseIntArray;

    const/4 v1, 0x5

    const/16 v5, 0xb

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/hardware/input/PhysicalKeyLayout;->DEFAULT_KEYCODE_FOR_SCANCODE:Landroid/util/SparseIntArray;

    const/4 v1, 0x6

    const/16 v6, 0xc

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/hardware/input/PhysicalKeyLayout;->DEFAULT_KEYCODE_FOR_SCANCODE:Landroid/util/SparseIntArray;

    const/4 v1, 0x7

    const/16 v7, 0xd

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/hardware/input/PhysicalKeyLayout;->DEFAULT_KEYCODE_FOR_SCANCODE:Landroid/util/SparseIntArray;

    const/16 v8, 0xe

    invoke-virtual {v0, v2, v8}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/hardware/input/PhysicalKeyLayout;->DEFAULT_KEYCODE_FOR_SCANCODE:Landroid/util/SparseIntArray;

    const/16 v2, 0xf

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/hardware/input/PhysicalKeyLayout;->DEFAULT_KEYCODE_FOR_SCANCODE:Landroid/util/SparseIntArray;

    const/16 v2, 0x10

    invoke-virtual {v0, v4, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/hardware/input/PhysicalKeyLayout;->DEFAULT_KEYCODE_FOR_SCANCODE:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/hardware/input/PhysicalKeyLayout;->DEFAULT_KEYCODE_FOR_SCANCODE:Landroid/util/SparseIntArray;

    const/16 v1, 0x45

    invoke-virtual {v0, v6, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/hardware/input/PhysicalKeyLayout;->DEFAULT_KEYCODE_FOR_SCANCODE:Landroid/util/SparseIntArray;

    const/16 v1, 0x46

    invoke-virtual {v0, v7, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/hardware/input/PhysicalKeyLayout;->DEFAULT_KEYCODE_FOR_SCANCODE:Landroid/util/SparseIntArray;

    const/16 v1, 0x2d

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/hardware/input/PhysicalKeyLayout;->DEFAULT_KEYCODE_FOR_SCANCODE:Landroid/util/SparseIntArray;

    const/16 v2, 0x11

    const/16 v3, 0x33

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/hardware/input/PhysicalKeyLayout;->DEFAULT_KEYCODE_FOR_SCANCODE:Landroid/util/SparseIntArray;

    const/16 v2, 0x12

    const/16 v4, 0x21

    invoke-virtual {v0, v2, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/hardware/input/PhysicalKeyLayout;->DEFAULT_KEYCODE_FOR_SCANCODE:Landroid/util/SparseIntArray;

    const/16 v2, 0x13

    const/16 v5, 0x2e

    invoke-virtual {v0, v2, v5}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/hardware/input/PhysicalKeyLayout;->DEFAULT_KEYCODE_FOR_SCANCODE:Landroid/util/SparseIntArray;

    const/16 v2, 0x14

    const/16 v6, 0x30

    invoke-virtual {v0, v2, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/hardware/input/PhysicalKeyLayout;->DEFAULT_KEYCODE_FOR_SCANCODE:Landroid/util/SparseIntArray;

    const/16 v2, 0x15

    const/16 v7, 0x35

    invoke-virtual {v0, v2, v7}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/hardware/input/PhysicalKeyLayout;->DEFAULT_KEYCODE_FOR_SCANCODE:Landroid/util/SparseIntArray;

    const/16 v2, 0x16

    const/16 v8, 0x31

    invoke-virtual {v0, v2, v8}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/hardware/input/PhysicalKeyLayout;->DEFAULT_KEYCODE_FOR_SCANCODE:Landroid/util/SparseIntArray;

    const/16 v2, 0x17

    const/16 v9, 0x25

    invoke-virtual {v0, v2, v9}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/hardware/input/PhysicalKeyLayout;->DEFAULT_KEYCODE_FOR_SCANCODE:Landroid/util/SparseIntArray;

    const/16 v2, 0x18

    const/16 v10, 0x2b

    invoke-virtual {v0, v2, v10}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/hardware/input/PhysicalKeyLayout;->DEFAULT_KEYCODE_FOR_SCANCODE:Landroid/util/SparseIntArray;

    const/16 v2, 0x19

    const/16 v11, 0x2c

    invoke-virtual {v0, v2, v11}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/hardware/input/PhysicalKeyLayout;->DEFAULT_KEYCODE_FOR_SCANCODE:Landroid/util/SparseIntArray;

    const/16 v2, 0x1a

    const/16 v12, 0x47

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/hardware/input/PhysicalKeyLayout;->DEFAULT_KEYCODE_FOR_SCANCODE:Landroid/util/SparseIntArray;

    const/16 v2, 0x1b

    const/16 v12, 0x48

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/hardware/input/PhysicalKeyLayout;->DEFAULT_KEYCODE_FOR_SCANCODE:Landroid/util/SparseIntArray;

    const/16 v2, 0x1d

    const/16 v12, 0x1e

    invoke-virtual {v0, v12, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/hardware/input/PhysicalKeyLayout;->DEFAULT_KEYCODE_FOR_SCANCODE:Landroid/util/SparseIntArray;

    const/16 v2, 0x1f

    const/16 v13, 0x2f

    invoke-virtual {v0, v2, v13}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/hardware/input/PhysicalKeyLayout;->DEFAULT_KEYCODE_FOR_SCANCODE:Landroid/util/SparseIntArray;

    const/16 v14, 0x20

    invoke-virtual {v0, v14, v14}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/hardware/input/PhysicalKeyLayout;->DEFAULT_KEYCODE_FOR_SCANCODE:Landroid/util/SparseIntArray;

    const/16 v14, 0x22

    invoke-virtual {v0, v4, v14}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/hardware/input/PhysicalKeyLayout;->DEFAULT_KEYCODE_FOR_SCANCODE:Landroid/util/SparseIntArray;

    const/16 v4, 0x22

    const/16 v14, 0x23

    invoke-virtual {v0, v4, v14}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/hardware/input/PhysicalKeyLayout;->DEFAULT_KEYCODE_FOR_SCANCODE:Landroid/util/SparseIntArray;

    const/16 v4, 0x23

    const/16 v14, 0x24

    invoke-virtual {v0, v4, v14}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/hardware/input/PhysicalKeyLayout;->DEFAULT_KEYCODE_FOR_SCANCODE:Landroid/util/SparseIntArray;

    const/16 v4, 0x24

    const/16 v14, 0x26

    invoke-virtual {v0, v4, v14}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/hardware/input/PhysicalKeyLayout;->DEFAULT_KEYCODE_FOR_SCANCODE:Landroid/util/SparseIntArray;

    const/16 v4, 0x27

    invoke-virtual {v0, v9, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/hardware/input/PhysicalKeyLayout;->DEFAULT_KEYCODE_FOR_SCANCODE:Landroid/util/SparseIntArray;

    const/16 v4, 0x26

    const/16 v9, 0x28

    invoke-virtual {v0, v4, v9}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/hardware/input/PhysicalKeyLayout;->DEFAULT_KEYCODE_FOR_SCANCODE:Landroid/util/SparseIntArray;

    const/16 v4, 0x27

    const/16 v9, 0x4a

    invoke-virtual {v0, v4, v9}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/hardware/input/PhysicalKeyLayout;->DEFAULT_KEYCODE_FOR_SCANCODE:Landroid/util/SparseIntArray;

    const/16 v4, 0x28

    const/16 v9, 0x4b

    invoke-virtual {v0, v4, v9}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/hardware/input/PhysicalKeyLayout;->DEFAULT_KEYCODE_FOR_SCANCODE:Landroid/util/SparseIntArray;

    const/16 v4, 0x29

    const/16 v9, 0x44

    invoke-virtual {v0, v4, v9}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/hardware/input/PhysicalKeyLayout;->DEFAULT_KEYCODE_FOR_SCANCODE:Landroid/util/SparseIntArray;

    const/16 v4, 0x49

    invoke-virtual {v0, v10, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/hardware/input/PhysicalKeyLayout;->DEFAULT_KEYCODE_FOR_SCANCODE:Landroid/util/SparseIntArray;

    const/16 v4, 0x36

    invoke-virtual {v0, v11, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/hardware/input/PhysicalKeyLayout;->DEFAULT_KEYCODE_FOR_SCANCODE:Landroid/util/SparseIntArray;

    const/16 v4, 0x34

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/hardware/input/PhysicalKeyLayout;->DEFAULT_KEYCODE_FOR_SCANCODE:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v5, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/hardware/input/PhysicalKeyLayout;->DEFAULT_KEYCODE_FOR_SCANCODE:Landroid/util/SparseIntArray;

    const/16 v1, 0x32

    invoke-virtual {v0, v13, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/hardware/input/PhysicalKeyLayout;->DEFAULT_KEYCODE_FOR_SCANCODE:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v6, v12}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/hardware/input/PhysicalKeyLayout;->DEFAULT_KEYCODE_FOR_SCANCODE:Landroid/util/SparseIntArray;

    const/16 v1, 0x2a

    invoke-virtual {v0, v8, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/hardware/input/PhysicalKeyLayout;->DEFAULT_KEYCODE_FOR_SCANCODE:Landroid/util/SparseIntArray;

    const/16 v1, 0x32

    const/16 v2, 0x29

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/hardware/input/PhysicalKeyLayout;->DEFAULT_KEYCODE_FOR_SCANCODE:Landroid/util/SparseIntArray;

    const/16 v1, 0x37

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/hardware/input/PhysicalKeyLayout;->DEFAULT_KEYCODE_FOR_SCANCODE:Landroid/util/SparseIntArray;

    const/16 v1, 0x34

    const/16 v2, 0x38

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/hardware/input/PhysicalKeyLayout;->DEFAULT_KEYCODE_FOR_SCANCODE:Landroid/util/SparseIntArray;

    const/16 v1, 0x4c

    invoke-virtual {v0, v7, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/hardware/input/PhysicalKeyLayout;->DEFAULT_KEYCODE_FOR_SCANCODE:Landroid/util/SparseIntArray;

    const/16 v1, 0x56

    const/16 v2, 0x49

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/hardware/input/PhysicalKeyLayout;->DEFAULT_KEYCODE_FOR_SCANCODE:Landroid/util/SparseIntArray;

    const/16 v1, 0x59

    const/16 v2, 0xd9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/hardware/input/PhysicalKeyLayout;->DEFAULT_KEYCODE_FOR_SCANCODE:Landroid/util/SparseIntArray;

    const/16 v1, 0x7c

    const/16 v2, 0xd8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/view/KeyCharacterMap;Landroid/hardware/input/KeyboardLayout;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/input/PhysicalKeyLayout;->mKeys:[[Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    iput-object v0, p0, Landroid/hardware/input/PhysicalKeyLayout;->mEnterKey:Landroid/hardware/input/PhysicalKeyLayout$EnterKey;

    invoke-direct {p0, p1, p2}, Landroid/hardware/input/PhysicalKeyLayout;->initLayoutKeys(Landroid/view/KeyCharacterMap;Landroid/hardware/input/KeyboardLayout;)V

    return-void
.end method

.method private blacklist createAnsiLayout(Landroid/view/KeyCharacterMap;)V
    .locals 19

    move-object/from16 v0, p1

    const/4 v1, 0x5

    new-array v2, v1, [[Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    const/16 v3, 0xe

    new-array v4, v3, [Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    const/16 v5, 0x29

    invoke-static {v0, v5}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v5, 0x2

    invoke-static {v0, v5}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v4, v8

    const/4 v7, 0x3

    invoke-static {v0, v7}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v9

    aput-object v9, v4, v5

    const/4 v9, 0x4

    invoke-static {v0, v9}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v10

    aput-object v10, v4, v7

    invoke-static {v0, v1}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v10

    aput-object v10, v4, v9

    const/4 v10, 0x6

    invoke-static {v0, v10}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v11

    aput-object v11, v4, v1

    const/4 v11, 0x7

    invoke-static {v0, v11}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v12

    aput-object v12, v4, v10

    const/16 v12, 0x8

    invoke-static {v0, v12}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v13

    aput-object v13, v4, v11

    const/16 v13, 0x9

    invoke-static {v0, v13}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v14

    aput-object v14, v4, v12

    const/16 v14, 0xa

    invoke-static {v0, v14}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v15

    aput-object v15, v4, v13

    const/16 v15, 0xb

    invoke-static {v0, v15}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v16

    aput-object v16, v4, v14

    const/16 v14, 0xc

    invoke-static {v0, v14}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v17

    aput-object v17, v4, v15

    const/16 v15, 0xd

    invoke-static {v0, v15}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v18

    aput-object v18, v4, v14

    const/16 v14, 0x43

    const/high16 v13, 0x3fc00000    # 1.5f

    invoke-static {v14, v13}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(IF)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v14

    aput-object v14, v4, v15

    aput-object v4, v2, v6

    new-array v3, v3, [Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    const/16 v4, 0x3d

    invoke-static {v4, v13}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(IF)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v4

    aput-object v4, v3, v6

    const/16 v4, 0x10

    invoke-static {v0, v4}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v4

    aput-object v4, v3, v8

    const/16 v4, 0x11

    invoke-static {v0, v4}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v4

    aput-object v4, v3, v5

    const/16 v4, 0x12

    invoke-static {v0, v4}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v4

    aput-object v4, v3, v7

    const/16 v4, 0x13

    invoke-static {v0, v4}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v4

    aput-object v4, v3, v9

    const/16 v4, 0x14

    invoke-static {v0, v4}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v4

    aput-object v4, v3, v1

    const/16 v4, 0x15

    invoke-static {v0, v4}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v4

    aput-object v4, v3, v10

    const/16 v4, 0x16

    invoke-static {v0, v4}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v4

    aput-object v4, v3, v11

    const/16 v4, 0x17

    invoke-static {v0, v4}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v4

    aput-object v4, v3, v12

    const/16 v4, 0x18

    invoke-static {v0, v4}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v4

    const/16 v13, 0x9

    aput-object v4, v3, v13

    const/16 v4, 0x19

    invoke-static {v0, v4}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v4

    const/16 v13, 0xa

    aput-object v4, v3, v13

    const/16 v4, 0x1a

    invoke-static {v0, v4}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v4

    const/16 v13, 0xb

    aput-object v4, v3, v13

    const/16 v4, 0x1b

    invoke-static {v0, v4}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v4

    const/16 v13, 0xc

    aput-object v4, v3, v13

    const/16 v4, 0x2b

    invoke-static {v0, v4}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v4

    aput-object v4, v3, v15

    aput-object v3, v2, v8

    new-array v3, v15, [Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    const/16 v4, 0x73

    const/high16 v13, 0x3fe00000    # 1.75f

    invoke-static {v4, v13}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(IF)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v4

    aput-object v4, v3, v6

    const/16 v4, 0x1e

    invoke-static {v0, v4}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v4

    aput-object v4, v3, v8

    const/16 v4, 0x1f

    invoke-static {v0, v4}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v4

    aput-object v4, v3, v5

    const/16 v4, 0x20

    invoke-static {v0, v4}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v4

    aput-object v4, v3, v7

    const/16 v4, 0x21

    invoke-static {v0, v4}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v4

    aput-object v4, v3, v9

    const/16 v4, 0x22

    invoke-static {v0, v4}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v4

    aput-object v4, v3, v1

    const/16 v4, 0x23

    invoke-static {v0, v4}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v4

    aput-object v4, v3, v10

    const/16 v4, 0x24

    invoke-static {v0, v4}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v4

    aput-object v4, v3, v11

    const/16 v4, 0x25

    invoke-static {v0, v4}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v4

    aput-object v4, v3, v12

    const/16 v4, 0x26

    invoke-static {v0, v4}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v4

    const/16 v14, 0x9

    aput-object v4, v3, v14

    const/16 v4, 0x27

    invoke-static {v0, v4}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v4

    const/16 v14, 0xa

    aput-object v4, v3, v14

    const/16 v4, 0x28

    invoke-static {v0, v4}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v4

    const/16 v14, 0xb

    aput-object v4, v3, v14

    const/16 v4, 0x42

    invoke-static {v4, v13}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(IF)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v4

    const/16 v13, 0xc

    aput-object v4, v3, v13

    aput-object v3, v2, v5

    new-array v3, v13, [Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    const/16 v4, 0x3b

    const/high16 v13, 0x40200000    # 2.5f

    invoke-static {v4, v13}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(IF)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v4

    aput-object v4, v3, v6

    const/16 v4, 0x2c

    invoke-static {v0, v4}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v4

    aput-object v4, v3, v8

    const/16 v4, 0x2d

    invoke-static {v0, v4}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v4

    aput-object v4, v3, v5

    const/16 v4, 0x2e

    invoke-static {v0, v4}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v4

    aput-object v4, v3, v7

    const/16 v4, 0x2f

    invoke-static {v0, v4}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v4

    aput-object v4, v3, v9

    const/16 v4, 0x30

    invoke-static {v0, v4}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v4

    aput-object v4, v3, v1

    const/16 v4, 0x31

    invoke-static {v0, v4}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v4

    aput-object v4, v3, v10

    const/16 v4, 0x32

    invoke-static {v0, v4}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v4

    aput-object v4, v3, v11

    const/16 v4, 0x33

    invoke-static {v0, v4}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v4

    aput-object v4, v3, v12

    const/16 v4, 0x34

    invoke-static {v0, v4}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v4

    const/16 v14, 0x9

    aput-object v4, v3, v14

    const/16 v4, 0x35

    invoke-static {v0, v4}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v4

    const/16 v15, 0xa

    aput-object v4, v3, v15

    const/16 v4, 0x3c

    invoke-static {v4, v13}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(IF)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v4

    const/16 v13, 0xb

    aput-object v4, v3, v13

    aput-object v3, v2, v7

    new-array v3, v14, [Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    const/16 v4, 0x71

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-static {v4, v13}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(IF)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v4

    aput-object v4, v3, v6

    const/16 v4, 0x77

    invoke-static {v4, v13}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(IF)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v4

    aput-object v4, v3, v8

    const/16 v4, 0x75

    invoke-static {v4, v13}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(IF)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v4

    aput-object v4, v3, v5

    const/16 v4, 0x39

    invoke-static {v4, v13}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(IF)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v4

    aput-object v4, v3, v7

    const/16 v4, 0x3e

    const/high16 v5, 0x40d00000    # 6.5f

    invoke-static {v4, v5}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(IF)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v4

    aput-object v4, v3, v9

    const/16 v4, 0x3a

    invoke-static {v4, v13}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(IF)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v4

    aput-object v4, v3, v1

    const/16 v1, 0x76

    invoke-static {v1, v13}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(IF)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v1

    aput-object v1, v3, v10

    const/16 v1, 0x52

    invoke-static {v1, v13}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(IF)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v1

    aput-object v1, v3, v11

    const/16 v1, 0x72

    invoke-static {v1, v13}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(IF)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v1

    aput-object v1, v3, v12

    aput-object v3, v2, v9

    move-object/from16 v1, p0

    iput-object v2, v1, Landroid/hardware/input/PhysicalKeyLayout;->mKeys:[[Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    return-void
.end method

.method private blacklist createIsoLayout(Landroid/view/KeyCharacterMap;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x5

    new-array v3, v2, [[Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    const/16 v4, 0xe

    new-array v5, v4, [Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    const/16 v6, 0x29

    invoke-static {v1, v6}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const/4 v6, 0x2

    invoke-static {v1, v6}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v5, v9

    const/4 v8, 0x3

    invoke-static {v1, v8}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v10

    aput-object v10, v5, v6

    const/4 v10, 0x4

    invoke-static {v1, v10}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v11

    aput-object v11, v5, v8

    invoke-static {v1, v2}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v11

    aput-object v11, v5, v10

    const/4 v11, 0x6

    invoke-static {v1, v11}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v12

    aput-object v12, v5, v2

    const/4 v12, 0x7

    invoke-static {v1, v12}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v13

    aput-object v13, v5, v11

    const/16 v13, 0x8

    invoke-static {v1, v13}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v14

    aput-object v14, v5, v12

    const/16 v14, 0x9

    invoke-static {v1, v14}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v15

    aput-object v15, v5, v13

    const/16 v15, 0xa

    invoke-static {v1, v15}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v16

    aput-object v16, v5, v14

    const/16 v14, 0xb

    invoke-static {v1, v14}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v17

    aput-object v17, v5, v15

    const/16 v15, 0xc

    invoke-static {v1, v15}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v18

    aput-object v18, v5, v14

    const/16 v14, 0xd

    invoke-static {v1, v14}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v19

    aput-object v19, v5, v15

    const/16 v15, 0x43

    const/high16 v13, 0x3fc00000    # 1.5f

    invoke-static {v15, v13}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(IF)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v15

    aput-object v15, v5, v14

    aput-object v5, v3, v7

    new-array v5, v4, [Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    const/16 v15, 0x3d

    const v13, 0x3f933333    # 1.15f

    invoke-static {v15, v13}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(IF)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v21

    aput-object v21, v5, v7

    const/16 v13, 0x10

    invoke-static {v1, v13}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v13

    aput-object v13, v5, v9

    const/16 v13, 0x11

    invoke-static {v1, v13}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v13

    aput-object v13, v5, v6

    const/16 v13, 0x12

    invoke-static {v1, v13}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v13

    aput-object v13, v5, v8

    const/16 v13, 0x13

    invoke-static {v1, v13}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v13

    aput-object v13, v5, v10

    const/16 v13, 0x14

    invoke-static {v1, v13}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v13

    aput-object v13, v5, v2

    const/16 v13, 0x15

    invoke-static {v1, v13}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v13

    aput-object v13, v5, v11

    const/16 v13, 0x16

    invoke-static {v1, v13}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v13

    aput-object v13, v5, v12

    const/16 v13, 0x17

    invoke-static {v1, v13}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v13

    const/16 v20, 0x8

    aput-object v13, v5, v20

    const/16 v13, 0x18

    invoke-static {v1, v13}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v13

    const/16 v16, 0x9

    aput-object v13, v5, v16

    const/16 v13, 0x19

    invoke-static {v1, v13}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v13

    const/16 v17, 0xa

    aput-object v13, v5, v17

    const/16 v13, 0x1a

    invoke-static {v1, v13}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v13

    const/16 v18, 0xb

    aput-object v13, v5, v18

    const/16 v13, 0x1b

    invoke-static {v1, v13}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v13

    const/16 v19, 0xc

    aput-object v13, v5, v19

    const/16 v13, 0x42

    const v12, 0x3faccccd    # 1.35f

    invoke-static {v13, v12}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(IF)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v22

    aput-object v22, v5, v14

    aput-object v5, v3, v9

    new-array v4, v4, [Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    const/high16 v5, 0x3fc00000    # 1.5f

    invoke-static {v15, v5}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(IF)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v5

    aput-object v5, v4, v7

    const/16 v5, 0x1e

    invoke-static {v1, v5}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v5

    aput-object v5, v4, v9

    const/16 v5, 0x1f

    invoke-static {v1, v5}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v5

    aput-object v5, v4, v6

    const/16 v5, 0x20

    invoke-static {v1, v5}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v5

    aput-object v5, v4, v8

    const/16 v5, 0x21

    invoke-static {v1, v5}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v5

    aput-object v5, v4, v10

    const/16 v5, 0x22

    invoke-static {v1, v5}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v5

    aput-object v5, v4, v2

    const/16 v5, 0x23

    invoke-static {v1, v5}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v5

    aput-object v5, v4, v11

    const/16 v5, 0x24

    invoke-static {v1, v5}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v5

    const/4 v15, 0x7

    aput-object v5, v4, v15

    const/16 v5, 0x25

    invoke-static {v1, v5}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v5

    const/16 v15, 0x8

    aput-object v5, v4, v15

    const/16 v5, 0x26

    invoke-static {v1, v5}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v5

    const/16 v15, 0x9

    aput-object v5, v4, v15

    const/16 v5, 0x27

    invoke-static {v1, v5}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v5

    const/16 v15, 0xa

    aput-object v5, v4, v15

    const/16 v5, 0x28

    invoke-static {v1, v5}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v5

    const/16 v15, 0xb

    aput-object v5, v4, v15

    const/16 v5, 0x2b

    invoke-static {v1, v5}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v5

    const/16 v15, 0xc

    aput-object v5, v4, v15

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v13, v5}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(IF)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v13

    aput-object v13, v4, v14

    aput-object v4, v3, v6

    new-array v4, v14, [Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    const/16 v13, 0x3b

    const v15, 0x3f933333    # 1.15f

    invoke-static {v13, v15}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(IF)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v13

    aput-object v13, v4, v7

    const/16 v13, 0x56

    invoke-static {v1, v13}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v13

    aput-object v13, v4, v9

    const/16 v13, 0x2c

    invoke-static {v1, v13}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v13

    aput-object v13, v4, v6

    const/16 v13, 0x2d

    invoke-static {v1, v13}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v13

    aput-object v13, v4, v8

    const/16 v13, 0x2e

    invoke-static {v1, v13}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v13

    aput-object v13, v4, v10

    const/16 v13, 0x2f

    invoke-static {v1, v13}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v13

    aput-object v13, v4, v2

    const/16 v13, 0x30

    invoke-static {v1, v13}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v13

    aput-object v13, v4, v11

    const/16 v13, 0x31

    invoke-static {v1, v13}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v13

    const/4 v15, 0x7

    aput-object v13, v4, v15

    const/16 v13, 0x32

    invoke-static {v1, v13}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v13

    const/16 v15, 0x8

    aput-object v13, v4, v15

    const/16 v13, 0x33

    invoke-static {v1, v13}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v13

    const/16 v15, 0x9

    aput-object v13, v4, v15

    const/16 v13, 0x34

    invoke-static {v1, v13}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v13

    const/16 v15, 0xa

    aput-object v13, v4, v15

    const/16 v13, 0x35

    invoke-static {v1, v13}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v13

    const/16 v15, 0xb

    aput-object v13, v4, v15

    const/16 v13, 0x3c

    const v15, 0x40166666    # 2.35f

    invoke-static {v13, v15}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(IF)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v13

    const/16 v15, 0xc

    aput-object v13, v4, v15

    aput-object v4, v3, v8

    const/16 v4, 0x9

    new-array v4, v4, [Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    const/16 v13, 0x71

    invoke-static {v13, v5}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(IF)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v13

    aput-object v13, v4, v7

    const/16 v7, 0x77

    invoke-static {v7, v5}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(IF)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v7

    aput-object v7, v4, v9

    const/16 v7, 0x75

    invoke-static {v7, v5}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(IF)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v7

    aput-object v7, v4, v6

    const/16 v6, 0x39

    invoke-static {v6, v5}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(IF)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v6

    aput-object v6, v4, v8

    const/16 v6, 0x3e

    const/high16 v7, 0x40d00000    # 6.5f

    invoke-static {v6, v7}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(IF)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v6

    aput-object v6, v4, v10

    const/16 v6, 0x3a

    invoke-static {v6, v5}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(IF)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v6

    aput-object v6, v4, v2

    const/16 v2, 0x76

    invoke-static {v2, v5}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(IF)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v2

    aput-object v2, v4, v11

    const/16 v2, 0x52

    invoke-static {v2, v5}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(IF)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v2

    const/4 v6, 0x7

    aput-object v2, v4, v6

    const/16 v2, 0x72

    invoke-static {v2, v5}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(IF)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v2

    const/16 v6, 0x8

    aput-object v2, v4, v6

    aput-object v4, v3, v10

    iput-object v3, v0, Landroid/hardware/input/PhysicalKeyLayout;->mKeys:[[Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    new-instance v2, Landroid/hardware/input/PhysicalKeyLayout$EnterKey;

    invoke-direct {v2, v9, v14, v12, v5}, Landroid/hardware/input/PhysicalKeyLayout$EnterKey;-><init>(IIFF)V

    iput-object v2, v0, Landroid/hardware/input/PhysicalKeyLayout;->mEnterKey:Landroid/hardware/input/PhysicalKeyLayout$EnterKey;

    return-void
.end method

.method private blacklist createJisLayout(Landroid/view/KeyCharacterMap;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x5

    new-array v3, v2, [[Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    const/16 v4, 0xf

    new-array v4, v4, [Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    const/16 v5, 0x29

    invoke-static {v1, v5}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v5, 0x2

    invoke-static {v1, v5}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v4, v8

    const/4 v7, 0x3

    invoke-static {v1, v7}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v9

    aput-object v9, v4, v5

    const/4 v9, 0x4

    invoke-static {v1, v9}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v10

    aput-object v10, v4, v7

    invoke-static {v1, v2}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v10

    aput-object v10, v4, v9

    const/4 v10, 0x6

    invoke-static {v1, v10}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v11

    aput-object v11, v4, v2

    const/4 v11, 0x7

    invoke-static {v1, v11}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v12

    aput-object v12, v4, v10

    const/16 v12, 0x8

    invoke-static {v1, v12}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v13

    aput-object v13, v4, v11

    const/16 v13, 0x9

    invoke-static {v1, v13}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v14

    aput-object v14, v4, v12

    const/16 v14, 0xa

    invoke-static {v1, v14}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v15

    aput-object v15, v4, v13

    const/16 v15, 0xb

    invoke-static {v1, v15}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v16

    aput-object v16, v4, v14

    const/16 v14, 0xc

    const v13, 0x3f4ccccd    # 0.8f

    invoke-static {v1, v14, v13}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;IF)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v18

    aput-object v18, v4, v15

    const/16 v15, 0xd

    invoke-static {v1, v15, v13}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;IF)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v19

    aput-object v19, v4, v14

    const/16 v14, 0x7c

    invoke-static {v1, v14, v13}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;IF)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v13

    aput-object v13, v4, v15

    const/16 v13, 0x43

    const v14, 0x3f8ccccd    # 1.1f

    invoke-static {v13, v14}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(IF)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v13

    const/16 v14, 0xe

    aput-object v13, v4, v14

    aput-object v4, v3, v6

    new-array v4, v14, [Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    const/16 v13, 0x3d

    const v14, 0x3f933333    # 1.15f

    invoke-static {v13, v14}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(IF)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v20

    aput-object v20, v4, v6

    const/16 v14, 0x10

    invoke-static {v1, v14}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v14

    aput-object v14, v4, v8

    const/16 v14, 0x11

    invoke-static {v1, v14}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v14

    aput-object v14, v4, v5

    const/16 v14, 0x12

    invoke-static {v1, v14}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v14

    aput-object v14, v4, v7

    const/16 v14, 0x13

    invoke-static {v1, v14}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v14

    aput-object v14, v4, v9

    const/16 v14, 0x14

    invoke-static {v1, v14}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v14

    aput-object v14, v4, v2

    const/16 v14, 0x15

    invoke-static {v1, v14}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v14

    aput-object v14, v4, v10

    const/16 v14, 0x16

    invoke-static {v1, v14}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v14

    aput-object v14, v4, v11

    const/16 v14, 0x17

    invoke-static {v1, v14}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v14

    aput-object v14, v4, v12

    const/16 v14, 0x18

    invoke-static {v1, v14}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v14

    const/16 v17, 0x9

    aput-object v14, v4, v17

    const/16 v14, 0x19

    invoke-static {v1, v14}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v14

    const/16 v16, 0xa

    aput-object v14, v4, v16

    const/16 v14, 0x1a

    invoke-static {v1, v14}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v14

    const/16 v18, 0xb

    aput-object v14, v4, v18

    const/16 v14, 0x1b

    invoke-static {v1, v14}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v14

    const/16 v19, 0xc

    aput-object v14, v4, v19

    const/16 v14, 0x42

    const v12, 0x3faccccd    # 1.35f

    invoke-static {v14, v12}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(IF)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v21

    aput-object v21, v4, v15

    aput-object v4, v3, v8

    const/16 v4, 0xe

    new-array v4, v4, [Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    const/high16 v12, 0x3fc00000    # 1.5f

    invoke-static {v13, v12}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(IF)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v12

    aput-object v12, v4, v6

    const/16 v12, 0x1e

    invoke-static {v1, v12}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v12

    aput-object v12, v4, v8

    const/16 v12, 0x1f

    invoke-static {v1, v12}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v12

    aput-object v12, v4, v5

    const/16 v12, 0x20

    invoke-static {v1, v12}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v12

    aput-object v12, v4, v7

    const/16 v12, 0x21

    invoke-static {v1, v12}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v12

    aput-object v12, v4, v9

    const/16 v12, 0x22

    invoke-static {v1, v12}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v12

    aput-object v12, v4, v2

    const/16 v12, 0x23

    invoke-static {v1, v12}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v12

    aput-object v12, v4, v10

    const/16 v12, 0x24

    invoke-static {v1, v12}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v12

    aput-object v12, v4, v11

    const/16 v12, 0x25

    invoke-static {v1, v12}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v12

    const/16 v13, 0x8

    aput-object v12, v4, v13

    const/16 v12, 0x26

    invoke-static {v1, v12}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v12

    const/16 v13, 0x9

    aput-object v12, v4, v13

    const/16 v12, 0x27

    invoke-static {v1, v12}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v12

    const/16 v13, 0xa

    aput-object v12, v4, v13

    const/16 v12, 0x28

    invoke-static {v1, v12}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v12

    const/16 v13, 0xb

    aput-object v12, v4, v13

    const/16 v12, 0x56

    invoke-static {v1, v12}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v12

    const/16 v13, 0xc

    aput-object v12, v4, v13

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-static {v14, v12}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(IF)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v13

    aput-object v13, v4, v15

    aput-object v4, v3, v5

    new-array v4, v15, [Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    const/16 v13, 0x3b

    const v14, 0x3f933333    # 1.15f

    invoke-static {v13, v14}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(IF)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v13

    aput-object v13, v4, v6

    const/16 v13, 0x2c

    invoke-static {v1, v13}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v13

    aput-object v13, v4, v8

    const/16 v13, 0x2d

    invoke-static {v1, v13}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v13

    aput-object v13, v4, v5

    const/16 v13, 0x2e

    invoke-static {v1, v13}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v13

    aput-object v13, v4, v7

    const/16 v13, 0x2f

    invoke-static {v1, v13}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v13

    aput-object v13, v4, v9

    const/16 v13, 0x30

    invoke-static {v1, v13}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v13

    aput-object v13, v4, v2

    const/16 v13, 0x31

    invoke-static {v1, v13}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v13

    aput-object v13, v4, v10

    const/16 v13, 0x32

    invoke-static {v1, v13}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v13

    aput-object v13, v4, v11

    const/16 v13, 0x33

    invoke-static {v1, v13}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v13

    const/16 v14, 0x8

    aput-object v13, v4, v14

    const/16 v13, 0x34

    invoke-static {v1, v13}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v13

    const/16 v14, 0x9

    aput-object v13, v4, v14

    const/16 v13, 0x35

    invoke-static {v1, v13}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v13

    const/16 v14, 0xa

    aput-object v13, v4, v14

    const/16 v13, 0x59

    invoke-static {v1, v13}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v13

    const/16 v14, 0xb

    aput-object v13, v4, v14

    const/16 v13, 0x3c

    const v14, 0x40166666    # 2.35f

    invoke-static {v13, v14}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(IF)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v13

    const/16 v14, 0xc

    aput-object v13, v4, v14

    aput-object v4, v3, v7

    new-array v4, v14, [Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    const/16 v13, 0x71

    invoke-static {v13, v12}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(IF)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v13

    aput-object v13, v4, v6

    const/16 v13, 0x77

    invoke-static {v13, v12}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(IF)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v13

    aput-object v13, v4, v8

    const/16 v13, 0x75

    invoke-static {v13, v12}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(IF)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v13

    aput-object v13, v4, v5

    const/16 v5, 0x39

    invoke-static {v5, v12}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(IF)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v6, v12}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(IF)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v5

    aput-object v5, v4, v9

    const/16 v5, 0x3e

    const/high16 v7, 0x40600000    # 3.5f

    invoke-static {v5, v7}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(IF)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v6, v12}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(IF)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v2

    aput-object v2, v4, v10

    invoke-static {v6, v12}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(IF)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v2

    aput-object v2, v4, v11

    const/16 v2, 0x3a

    invoke-static {v2, v12}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(IF)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v2

    const/16 v5, 0x8

    aput-object v2, v4, v5

    const/16 v2, 0x76

    invoke-static {v2, v12}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(IF)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v2

    const/16 v5, 0x9

    aput-object v2, v4, v5

    const/16 v2, 0x52

    invoke-static {v2, v12}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(IF)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v2

    const/16 v5, 0xa

    aput-object v2, v4, v5

    const/16 v2, 0x72

    invoke-static {v2, v12}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(IF)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v2

    const/16 v5, 0xb

    aput-object v2, v4, v5

    aput-object v4, v3, v9

    iput-object v3, v0, Landroid/hardware/input/PhysicalKeyLayout;->mKeys:[[Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    new-instance v2, Landroid/hardware/input/PhysicalKeyLayout$EnterKey;

    const v3, 0x3faccccd    # 1.35f

    invoke-direct {v2, v8, v15, v3, v12}, Landroid/hardware/input/PhysicalKeyLayout$EnterKey;-><init>(IIFF)V

    iput-object v2, v0, Landroid/hardware/input/PhysicalKeyLayout;->mEnterKey:Landroid/hardware/input/PhysicalKeyLayout$EnterKey;

    return-void
.end method

.method private static blacklist getKey(IF)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;
    .locals 2

    new-instance v0, Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p0, p1, v1}, Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;-><init>(IIFLandroid/hardware/input/PhysicalKeyLayout$KeyGlyph;)V

    return-object v0
.end method

.method private static blacklist getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p0, p1, v0}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;IF)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist getKey(Landroid/view/KeyCharacterMap;IF)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;
    .locals 3

    sget-object v0, Landroid/hardware/input/PhysicalKeyLayout;->DEFAULT_KEYCODE_FOR_SCANCODE:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/view/KeyCharacterMap;->getMappedKeyOrDefault(II)I

    move-result v0

    new-instance v1, Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    new-instance v2, Landroid/hardware/input/PhysicalKeyLayout$KeyGlyph;

    invoke-direct {v2, p0, v0}, Landroid/hardware/input/PhysicalKeyLayout$KeyGlyph;-><init>(Landroid/view/KeyCharacterMap;I)V

    invoke-direct {v1, v0, p1, p2, v2}, Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;-><init>(IIFLandroid/hardware/input/PhysicalKeyLayout$KeyGlyph;)V

    return-object v1
.end method

.method private static blacklist getKeyText(Landroid/view/KeyCharacterMap;II)Ljava/lang/String;
    .locals 3

    invoke-static {p1}, Landroid/hardware/input/PhysicalKeyLayout;->isSpecialKey(I)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/view/KeyCharacterMap;->get(II)I

    move-result v0

    const v2, 0x7fffffff

    and-int/2addr v0, v2

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    invoke-static {v0}, Ljava/lang/Character;->isValidCodePoint(I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v0}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_2
    const-string v1, "\u25a1"

    return-object v1
.end method

.method private blacklist initLayoutKeys(Landroid/view/KeyCharacterMap;Landroid/hardware/input/KeyboardLayout;)V
    .locals 1

    if-nez p2, :cond_0

    invoke-direct {p0, p1}, Landroid/hardware/input/PhysicalKeyLayout;->createIsoLayout(Landroid/view/KeyCharacterMap;)V

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/hardware/input/KeyboardLayout;->isAnsiLayout()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Landroid/hardware/input/PhysicalKeyLayout;->createAnsiLayout(Landroid/view/KeyCharacterMap;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroid/hardware/input/KeyboardLayout;->isJisLayout()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Landroid/hardware/input/PhysicalKeyLayout;->createJisLayout(Landroid/view/KeyCharacterMap;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Landroid/hardware/input/PhysicalKeyLayout;->createIsoLayout(Landroid/view/KeyCharacterMap;)V

    :goto_0
    return-void
.end method

.method public static blacklist isKeyPositionUnsure(Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;)Z
    .locals 1

    invoke-static {p0}, Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;->-$$Nest$fgetscanCode(Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    const/4 v0, 0x0

    return v0

    :sswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x29 -> :sswitch_0
        0x2b -> :sswitch_0
        0x56 -> :sswitch_0
    .end sparse-switch
.end method

.method private static blacklist isSpecialKey(I)Z
    .locals 1

    sparse-switch p0, :sswitch_data_0

    const/4 v0, 0x0

    return v0

    :sswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x39 -> :sswitch_0
        0x3a -> :sswitch_0
        0x3b -> :sswitch_0
        0x3c -> :sswitch_0
        0x3d -> :sswitch_0
        0x3e -> :sswitch_0
        0x42 -> :sswitch_0
        0x43 -> :sswitch_0
        0x52 -> :sswitch_0
        0x71 -> :sswitch_0
        0x72 -> :sswitch_0
        0x73 -> :sswitch_0
        0x75 -> :sswitch_0
        0x76 -> :sswitch_0
        0x77 -> :sswitch_0
    .end sparse-switch
.end method

.method public static blacklist isSpecialKey(Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;)Z
    .locals 1

    invoke-static {p0}, Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;->-$$Nest$fgetkeyCode(Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;)I

    move-result v0

    invoke-static {v0}, Landroid/hardware/input/PhysicalKeyLayout;->isSpecialKey(I)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public blacklist getEnterKey()Landroid/hardware/input/PhysicalKeyLayout$EnterKey;
    .locals 1

    iget-object v0, p0, Landroid/hardware/input/PhysicalKeyLayout;->mEnterKey:Landroid/hardware/input/PhysicalKeyLayout$EnterKey;

    return-object v0
.end method

.method public blacklist getKeys()[[Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;
    .locals 1

    iget-object v0, p0, Landroid/hardware/input/PhysicalKeyLayout;->mKeys:[[Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    return-object v0
.end method
