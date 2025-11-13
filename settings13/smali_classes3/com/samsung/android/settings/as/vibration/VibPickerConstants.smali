.class public Lcom/samsung/android/settings/as/vibration/VibPickerConstants;
.super Ljava/lang/Object;
.source "VibPickerConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/as/vibration/VibPickerConstants$PatternContainer;
    }
.end annotation


# static fields
.field private static final BASE_LOOKUP_TABLE:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final COLORFUL_NOTIFICATION_PATTERN:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/settings/as/vibration/VibPickerConstants$PatternContainer;",
            ">;"
        }
    .end annotation
.end field

.field public static final COLORFUL_RINGTONE_PATTERN:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/settings/as/vibration/VibPickerConstants$PatternContainer;",
            ">;"
        }
    .end annotation
.end field

.field public static final COLORFUL_RINGTONE_PATTERN_LEGACY:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/settings/as/vibration/VibPickerConstants$PatternContainer;",
            ">;"
        }
    .end annotation
.end field

.field public static final LIVE_NOTIFICATION_PATTERN:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/settings/as/vibration/VibPickerConstants$PatternContainer;",
            ">;"
        }
    .end annotation
.end field

.field public static final LIVE_RINGTONE_PATTERN:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/settings/as/vibration/VibPickerConstants$PatternContainer;",
            ">;"
        }
    .end annotation
.end field

.field public static final PATH_URI_MATCHER:Landroid/content/UriMatcher;

.field public static final SILENT_PATTERN:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/settings/as/vibration/VibPickerConstants$PatternContainer;",
            ">;"
        }
    .end annotation
.end field

.field public static final SIMPLE_NOTIFICATION_PATTERN:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/settings/as/vibration/VibPickerConstants$PatternContainer;",
            ">;"
        }
    .end annotation
.end field

.field public static final SIMPLE_RINGTONE_PATTERN:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/settings/as/vibration/VibPickerConstants$PatternContainer;",
            ">;"
        }
    .end annotation
.end field

.field public static final SIMPLE_RINGTONE_PATTERN_LEGACY:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/settings/as/vibration/VibPickerConstants$PatternContainer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 34

    .line 56
    new-instance v0, Lcom/samsung/android/settings/as/vibration/VibPickerConstants$1;

    invoke-direct {v0}, Lcom/samsung/android/settings/as/vibration/VibPickerConstants$1;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/as/vibration/VibPickerConstants;->BASE_LOOKUP_TABLE:Ljava/util/HashMap;

    .line 76
    new-instance v0, Lcom/samsung/android/settings/as/vibration/VibPickerConstants$2;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/as/vibration/VibPickerConstants$2;-><init>(I)V

    sput-object v0, Lcom/samsung/android/settings/as/vibration/VibPickerConstants;->PATH_URI_MATCHER:Landroid/content/UriMatcher;

    .line 138
    new-instance v0, Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/settings/as/vibration/VibPickerConstants$PatternContainer;

    const/16 v2, 0xb

    const-string v3, "Basic call"

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/settings/as/vibration/VibPickerConstants$PatternContainer;-><init>(ILjava/lang/String;)V

    new-instance v4, Lcom/samsung/android/settings/as/vibration/VibPickerConstants$PatternContainer;

    const/16 v5, 0x9

    const-string v6, "Heartbeat"

    invoke-direct {v4, v5, v6}, Lcom/samsung/android/settings/as/vibration/VibPickerConstants$PatternContainer;-><init>(ILjava/lang/String;)V

    new-instance v7, Lcom/samsung/android/settings/as/vibration/VibPickerConstants$PatternContainer;

    const/16 v8, 0xa

    const-string v9, "Ticktock"

    invoke-direct {v7, v8, v9}, Lcom/samsung/android/settings/as/vibration/VibPickerConstants$PatternContainer;-><init>(ILjava/lang/String;)V

    new-instance v10, Lcom/samsung/android/settings/as/vibration/VibPickerConstants$PatternContainer;

    const/16 v11, 0xd

    const-string v12, "Waltz"

    invoke-direct {v10, v11, v12}, Lcom/samsung/android/settings/as/vibration/VibPickerConstants$PatternContainer;-><init>(ILjava/lang/String;)V

    new-instance v13, Lcom/samsung/android/settings/as/vibration/VibPickerConstants$PatternContainer;

    const/16 v14, 0xc

    const-string v15, "Zig-zig-zig"

    invoke-direct {v13, v14, v15}, Lcom/samsung/android/settings/as/vibration/VibPickerConstants$PatternContainer;-><init>(ILjava/lang/String;)V

    .line 139
    invoke-static {v1, v4, v7, v10, v13}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/samsung/android/settings/as/vibration/VibPickerConstants;->SIMPLE_RINGTONE_PATTERN_LEGACY:Ljava/util/List;

    .line 147
    new-instance v0, Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/settings/as/vibration/VibPickerConstants$PatternContainer;

    const/16 v4, 0x11

    const-string v7, "Off-beat"

    invoke-direct {v1, v4, v7}, Lcom/samsung/android/settings/as/vibration/VibPickerConstants$PatternContainer;-><init>(ILjava/lang/String;)V

    new-instance v10, Lcom/samsung/android/settings/as/vibration/VibPickerConstants$PatternContainer;

    const/16 v13, 0x12

    const-string v4, "Spinning"

    invoke-direct {v10, v13, v4}, Lcom/samsung/android/settings/as/vibration/VibPickerConstants$PatternContainer;-><init>(ILjava/lang/String;)V

    new-instance v13, Lcom/samsung/android/settings/as/vibration/VibPickerConstants$PatternContainer;

    const/16 v14, 0x13

    const-string v11, "Siren"

    invoke-direct {v13, v14, v11}, Lcom/samsung/android/settings/as/vibration/VibPickerConstants$PatternContainer;-><init>(ILjava/lang/String;)V

    new-instance v14, Lcom/samsung/android/settings/as/vibration/VibPickerConstants$PatternContainer;

    const/16 v8, 0x14

    const-string v5, "Telephone"

    invoke-direct {v14, v8, v5}, Lcom/samsung/android/settings/as/vibration/VibPickerConstants$PatternContainer;-><init>(ILjava/lang/String;)V

    new-instance v8, Lcom/samsung/android/settings/as/vibration/VibPickerConstants$PatternContainer;

    const/16 v2, 0x15

    move-object/from16 v24, v5

    const-string v5, "Ripple"

    invoke-direct {v8, v2, v5}, Lcom/samsung/android/settings/as/vibration/VibPickerConstants$PatternContainer;-><init>(ILjava/lang/String;)V

    .line 148
    invoke-static {v1, v10, v13, v14, v8}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/samsung/android/settings/as/vibration/VibPickerConstants;->COLORFUL_RINGTONE_PATTERN_LEGACY:Ljava/util/List;

    .line 160
    new-instance v0, Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/settings/as/vibration/VibPickerConstants$PatternContainer;

    const/16 v8, 0x38

    const-string v10, "Short"

    invoke-direct {v1, v8, v10}, Lcom/samsung/android/settings/as/vibration/VibPickerConstants$PatternContainer;-><init>(ILjava/lang/String;)V

    new-instance v13, Lcom/samsung/android/settings/as/vibration/VibPickerConstants$PatternContainer;

    const/16 v14, 0x39

    const-string v8, "Medium"

    invoke-direct {v13, v14, v8}, Lcom/samsung/android/settings/as/vibration/VibPickerConstants$PatternContainer;-><init>(ILjava/lang/String;)V

    new-instance v8, Lcom/samsung/android/settings/as/vibration/VibPickerConstants$PatternContainer;

    const/16 v14, 0xb

    invoke-direct {v8, v14, v3}, Lcom/samsung/android/settings/as/vibration/VibPickerConstants$PatternContainer;-><init>(ILjava/lang/String;)V

    new-instance v3, Lcom/samsung/android/settings/as/vibration/VibPickerConstants$PatternContainer;

    const/16 v14, 0x9

    invoke-direct {v3, v14, v6}, Lcom/samsung/android/settings/as/vibration/VibPickerConstants$PatternContainer;-><init>(ILjava/lang/String;)V

    new-instance v14, Lcom/samsung/android/settings/as/vibration/VibPickerConstants$PatternContainer;

    const/16 v2, 0xa

    invoke-direct {v14, v2, v9}, Lcom/samsung/android/settings/as/vibration/VibPickerConstants$PatternContainer;-><init>(ILjava/lang/String;)V

    new-instance v2, Lcom/samsung/android/settings/as/vibration/VibPickerConstants$PatternContainer;

    move-object/from16 v32, v9

    const/16 v9, 0xd

    invoke-direct {v2, v9, v12}, Lcom/samsung/android/settings/as/vibration/VibPickerConstants$PatternContainer;-><init>(ILjava/lang/String;)V

    new-instance v9, Lcom/samsung/android/settings/as/vibration/VibPickerConstants$PatternContainer;

    move-object/from16 v33, v12

    const/16 v12, 0xc

    invoke-direct {v9, v12, v15}, Lcom/samsung/android/settings/as/vibration/VibPickerConstants$PatternContainer;-><init>(ILjava/lang/String;)V

    move-object/from16 v25, v1

    move-object/from16 v26, v13

    move-object/from16 v27, v8

    move-object/from16 v28, v3

    move-object/from16 v29, v14

    move-object/from16 v30, v2

    move-object/from16 v31, v9

    .line 161
    invoke-static/range {v25 .. v31}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/samsung/android/settings/as/vibration/VibPickerConstants;->SIMPLE_RINGTONE_PATTERN:Ljava/util/List;

    .line 171
    new-instance v0, Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/settings/as/vibration/VibPickerConstants$PatternContainer;

    const/16 v2, 0x11

    invoke-direct {v1, v2, v7}, Lcom/samsung/android/settings/as/vibration/VibPickerConstants$PatternContainer;-><init>(ILjava/lang/String;)V

    new-instance v2, Lcom/samsung/android/settings/as/vibration/VibPickerConstants$PatternContainer;

    const/16 v3, 0x12

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/settings/as/vibration/VibPickerConstants$PatternContainer;-><init>(ILjava/lang/String;)V

    new-instance v3, Lcom/samsung/android/settings/as/vibration/VibPickerConstants$PatternContainer;

    const/16 v8, 0x13

    invoke-direct {v3, v8, v11}, Lcom/samsung/android/settings/as/vibration/VibPickerConstants$PatternContainer;-><init>(ILjava/lang/String;)V

    new-instance v8, Lcom/samsung/android/settings/as/vibration/VibPickerConstants$PatternContainer;

    move-object/from16 v12, v24

    const/16 v9, 0x14

    invoke-direct {v8, v9, v12}, Lcom/samsung/android/settings/as/vibration/VibPickerConstants$PatternContainer;-><init>(ILjava/lang/String;)V

    new-instance v9, Lcom/samsung/android/settings/as/vibration/VibPickerConstants$PatternContainer;

    const/16 v13, 0x15

    invoke-direct {v9, v13, v5}, Lcom/samsung/android/settings/as/vibration/VibPickerConstants$PatternContainer;-><init>(ILjava/lang/String;)V

    new-instance v13, Lcom/samsung/android/settings/as/vibration/VibPickerConstants$PatternContainer;

    const/16 v14, 0x5b

    move-object/from16 v16, v5

    const-string v5, "Cricket"

    invoke-direct {v13, v14, v5}, Lcom/samsung/android/settings/as/vibration/VibPickerConstants$PatternContainer;-><init>(ILjava/lang/String;)V

    new-instance v5, Lcom/samsung/android/settings/as/vibration/VibPickerConstants$PatternContainer;

    const/16 v14, 0x5c

    const-string v12, "Rebound"

    invoke-direct {v5, v14, v12}, Lcom/samsung/android/settings/as/vibration/VibPickerConstants$PatternContainer;-><init>(ILjava/lang/String;)V

    move-object/from16 v25, v1

    move-object/from16 v26, v2

    move-object/from16 v27, v3

    move-object/from16 v28, v8

    move-object/from16 v29, v9

    move-object/from16 v30, v13

    move-object/from16 v31, v5

    .line 172
    invoke-static/range {v25 .. v31}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/samsung/android/settings/as/vibration/VibPickerConstants;->COLORFUL_RINGTONE_PATTERN:Ljava/util/List;

    .line 182
    new-instance v0, Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/settings/as/vibration/VibPickerConstants$PatternContainer;

    const/16 v2, 0x65

    const-string v3, "Bounce"

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/settings/as/vibration/VibPickerConstants$PatternContainer;-><init>(ILjava/lang/String;)V

    new-instance v2, Lcom/samsung/android/settings/as/vibration/VibPickerConstants$PatternContainer;

    const/16 v3, 0x66

    const-string v5, "Tap"

    invoke-direct {v2, v3, v5}, Lcom/samsung/android/settings/as/vibration/VibPickerConstants$PatternContainer;-><init>(ILjava/lang/String;)V

    new-instance v3, Lcom/samsung/android/settings/as/vibration/VibPickerConstants$PatternContainer;

    const/16 v5, 0x67

    const-string v8, "Dubstep"

    invoke-direct {v3, v5, v8}, Lcom/samsung/android/settings/as/vibration/VibPickerConstants$PatternContainer;-><init>(ILjava/lang/String;)V

    new-instance v5, Lcom/samsung/android/settings/as/vibration/VibPickerConstants$PatternContainer;

    const/16 v8, 0x68

    const-string v9, "Fireworks"

    invoke-direct {v5, v8, v9}, Lcom/samsung/android/settings/as/vibration/VibPickerConstants$PatternContainer;-><init>(ILjava/lang/String;)V

    new-instance v8, Lcom/samsung/android/settings/as/vibration/VibPickerConstants$PatternContainer;

    const/16 v9, 0x69

    const-string v12, "Gallop"

    invoke-direct {v8, v9, v12}, Lcom/samsung/android/settings/as/vibration/VibPickerConstants$PatternContainer;-><init>(ILjava/lang/String;)V

    new-instance v9, Lcom/samsung/android/settings/as/vibration/VibPickerConstants$PatternContainer;

    const/16 v12, 0x6a

    const-string v13, "Shuffle"

    invoke-direct {v9, v12, v13}, Lcom/samsung/android/settings/as/vibration/VibPickerConstants$PatternContainer;-><init>(ILjava/lang/String;)V

    new-instance v12, Lcom/samsung/android/settings/as/vibration/VibPickerConstants$PatternContainer;

    const/16 v13, 0x6b

    const-string v14, "Spring"

    invoke-direct {v12, v13, v14}, Lcom/samsung/android/settings/as/vibration/VibPickerConstants$PatternContainer;-><init>(ILjava/lang/String;)V

    move-object/from16 v25, v1

    move-object/from16 v26, v2

    move-object/from16 v27, v3

    move-object/from16 v28, v5

    move-object/from16 v29, v8

    move-object/from16 v30, v9

    move-object/from16 v31, v12

    .line 183
    invoke-static/range {v25 .. v31}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/samsung/android/settings/as/vibration/VibPickerConstants;->LIVE_RINGTONE_PATTERN:Ljava/util/List;

    .line 197
    new-instance v0, Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/settings/as/vibration/VibPickerConstants$PatternContainer;

    const/16 v2, 0x38

    invoke-direct {v1, v2, v10}, Lcom/samsung/android/settings/as/vibration/VibPickerConstants$PatternContainer;-><init>(ILjava/lang/String;)V

    new-instance v2, Lcom/samsung/android/settings/as/vibration/VibPickerConstants$PatternContainer;

    const/16 v3, 0x39

    const-string v5, "Medium"

    invoke-direct {v2, v3, v5}, Lcom/samsung/android/settings/as/vibration/VibPickerConstants$PatternContainer;-><init>(ILjava/lang/String;)V

    new-instance v3, Lcom/samsung/android/settings/as/vibration/VibPickerConstants$PatternContainer;

    const/16 v5, 0x3b

    const-string v8, "Basic"

    invoke-direct {v3, v5, v8}, Lcom/samsung/android/settings/as/vibration/VibPickerConstants$PatternContainer;-><init>(ILjava/lang/String;)V

    new-instance v5, Lcom/samsung/android/settings/as/vibration/VibPickerConstants$PatternContainer;

    const/16 v8, 0x9

    invoke-direct {v5, v8, v6}, Lcom/samsung/android/settings/as/vibration/VibPickerConstants$PatternContainer;-><init>(ILjava/lang/String;)V

    new-instance v6, Lcom/samsung/android/settings/as/vibration/VibPickerConstants$PatternContainer;

    move-object/from16 v8, v32

    const/16 v9, 0xa

    invoke-direct {v6, v9, v8}, Lcom/samsung/android/settings/as/vibration/VibPickerConstants$PatternContainer;-><init>(ILjava/lang/String;)V

    new-instance v8, Lcom/samsung/android/settings/as/vibration/VibPickerConstants$PatternContainer;

    move-object/from16 v9, v33

    const/16 v10, 0xd

    invoke-direct {v8, v10, v9}, Lcom/samsung/android/settings/as/vibration/VibPickerConstants$PatternContainer;-><init>(ILjava/lang/String;)V

    new-instance v9, Lcom/samsung/android/settings/as/vibration/VibPickerConstants$PatternContainer;

    const/16 v10, 0xc

    invoke-direct {v9, v10, v15}, Lcom/samsung/android/settings/as/vibration/VibPickerConstants$PatternContainer;-><init>(ILjava/lang/String;)V

    move-object/from16 v25, v1

    move-object/from16 v26, v2

    move-object/from16 v27, v3

    move-object/from16 v28, v5

    move-object/from16 v29, v6

    move-object/from16 v30, v8

    move-object/from16 v31, v9

    .line 198
    invoke-static/range {v25 .. v31}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/samsung/android/settings/as/vibration/VibPickerConstants;->SIMPLE_NOTIFICATION_PATTERN:Ljava/util/List;

    .line 208
    new-instance v0, Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/settings/as/vibration/VibPickerConstants$PatternContainer;

    const/16 v2, 0x54

    invoke-direct {v1, v2, v7}, Lcom/samsung/android/settings/as/vibration/VibPickerConstants$PatternContainer;-><init>(ILjava/lang/String;)V

    new-instance v2, Lcom/samsung/android/settings/as/vibration/VibPickerConstants$PatternContainer;

    const/16 v3, 0x55

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/settings/as/vibration/VibPickerConstants$PatternContainer;-><init>(ILjava/lang/String;)V

    new-instance v3, Lcom/samsung/android/settings/as/vibration/VibPickerConstants$PatternContainer;

    const/16 v4, 0x56

    invoke-direct {v3, v4, v11}, Lcom/samsung/android/settings/as/vibration/VibPickerConstants$PatternContainer;-><init>(ILjava/lang/String;)V

    new-instance v4, Lcom/samsung/android/settings/as/vibration/VibPickerConstants$PatternContainer;

    const/16 v5, 0x57

    move-object/from16 v6, v24

    invoke-direct {v4, v5, v6}, Lcom/samsung/android/settings/as/vibration/VibPickerConstants$PatternContainer;-><init>(ILjava/lang/String;)V

    new-instance v5, Lcom/samsung/android/settings/as/vibration/VibPickerConstants$PatternContainer;

    const/16 v6, 0x58

    move-object/from16 v7, v16

    invoke-direct {v5, v6, v7}, Lcom/samsung/android/settings/as/vibration/VibPickerConstants$PatternContainer;-><init>(ILjava/lang/String;)V

    new-instance v6, Lcom/samsung/android/settings/as/vibration/VibPickerConstants$PatternContainer;

    const/16 v7, 0x59

    const-string v8, "Cricket"

    invoke-direct {v6, v7, v8}, Lcom/samsung/android/settings/as/vibration/VibPickerConstants$PatternContainer;-><init>(ILjava/lang/String;)V

    new-instance v7, Lcom/samsung/android/settings/as/vibration/VibPickerConstants$PatternContainer;

    const/16 v8, 0x5a

    const-string v9, "Rebound"

    invoke-direct {v7, v8, v9}, Lcom/samsung/android/settings/as/vibration/VibPickerConstants$PatternContainer;-><init>(ILjava/lang/String;)V

    move-object/from16 v17, v1

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    move-object/from16 v20, v4

    move-object/from16 v21, v5

    move-object/from16 v22, v6

    move-object/from16 v23, v7

    .line 209
    invoke-static/range {v17 .. v23}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/samsung/android/settings/as/vibration/VibPickerConstants;->COLORFUL_NOTIFICATION_PATTERN:Ljava/util/List;

    .line 219
    new-instance v0, Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/settings/as/vibration/VibPickerConstants$PatternContainer;

    const/16 v2, 0x5d

    const-string v3, "Bounce"

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/settings/as/vibration/VibPickerConstants$PatternContainer;-><init>(ILjava/lang/String;)V

    new-instance v2, Lcom/samsung/android/settings/as/vibration/VibPickerConstants$PatternContainer;

    const/16 v3, 0x5e

    const-string v4, "Tap"

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/settings/as/vibration/VibPickerConstants$PatternContainer;-><init>(ILjava/lang/String;)V

    new-instance v3, Lcom/samsung/android/settings/as/vibration/VibPickerConstants$PatternContainer;

    const/16 v4, 0x5f

    const-string v5, "Dubstep"

    invoke-direct {v3, v4, v5}, Lcom/samsung/android/settings/as/vibration/VibPickerConstants$PatternContainer;-><init>(ILjava/lang/String;)V

    new-instance v4, Lcom/samsung/android/settings/as/vibration/VibPickerConstants$PatternContainer;

    const/16 v5, 0x60

    const-string v6, "Fireworks"

    invoke-direct {v4, v5, v6}, Lcom/samsung/android/settings/as/vibration/VibPickerConstants$PatternContainer;-><init>(ILjava/lang/String;)V

    new-instance v5, Lcom/samsung/android/settings/as/vibration/VibPickerConstants$PatternContainer;

    const/16 v6, 0x61

    const-string v7, "Gallop"

    invoke-direct {v5, v6, v7}, Lcom/samsung/android/settings/as/vibration/VibPickerConstants$PatternContainer;-><init>(ILjava/lang/String;)V

    new-instance v6, Lcom/samsung/android/settings/as/vibration/VibPickerConstants$PatternContainer;

    const/16 v7, 0x62

    const-string v8, "Shuffle"

    invoke-direct {v6, v7, v8}, Lcom/samsung/android/settings/as/vibration/VibPickerConstants$PatternContainer;-><init>(ILjava/lang/String;)V

    new-instance v7, Lcom/samsung/android/settings/as/vibration/VibPickerConstants$PatternContainer;

    const/16 v8, 0x63

    const-string v9, "Spring"

    invoke-direct {v7, v8, v9}, Lcom/samsung/android/settings/as/vibration/VibPickerConstants$PatternContainer;-><init>(ILjava/lang/String;)V

    .line 220
    invoke-static/range {v1 .. v7}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/samsung/android/settings/as/vibration/VibPickerConstants;->LIVE_NOTIFICATION_PATTERN:Ljava/util/List;

    .line 230
    new-instance v0, Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/settings/as/vibration/VibPickerConstants$PatternContainer;

    const/16 v2, 0x3c

    const-string v3, "Silent"

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/settings/as/vibration/VibPickerConstants$PatternContainer;-><init>(ILjava/lang/String;)V

    .line 231
    invoke-static {v1}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/samsung/android/settings/as/vibration/VibPickerConstants;->SILENT_PATTERN:Ljava/util/List;

    return-void
.end method

.method public static getLegacyRingtoneColorfulStartId()I
    .locals 2

    .line 240
    invoke-static {}, Lcom/samsung/android/settings/as/vibration/VibPickerConstants;->getLegacyRingtoneSimpleStartId()I

    move-result v0

    sget-object v1, Lcom/samsung/android/settings/as/vibration/VibPickerConstants;->SIMPLE_RINGTONE_PATTERN_LEGACY:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static getLegacyRingtoneSimpleStartId()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static getNotificationColorfulStartId()I
    .locals 2

    .line 260
    invoke-static {}, Lcom/samsung/android/settings/as/vibration/VibPickerConstants;->getNotificationSimpleStartId()I

    move-result v0

    sget-object v1, Lcom/samsung/android/settings/as/vibration/VibPickerConstants;->SIMPLE_NOTIFICATION_PATTERN:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static getNotificationLiveStartId()I
    .locals 2

    .line 264
    invoke-static {}, Lcom/samsung/android/settings/as/vibration/VibPickerConstants;->getNotificationColorfulStartId()I

    move-result v0

    sget-object v1, Lcom/samsung/android/settings/as/vibration/VibPickerConstants;->COLORFUL_NOTIFICATION_PATTERN:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static getNotificationSimpleStartId()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static getRingtoneColorfulStartId()I
    .locals 2

    .line 248
    invoke-static {}, Lcom/samsung/android/settings/as/vibration/VibPickerConstants;->getRingtoneSimpleStartId()I

    move-result v0

    sget-object v1, Lcom/samsung/android/settings/as/vibration/VibPickerConstants;->SIMPLE_RINGTONE_PATTERN:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static getRingtoneLiveStartId()I
    .locals 2

    .line 252
    invoke-static {}, Lcom/samsung/android/settings/as/vibration/VibPickerConstants;->getRingtoneColorfulStartId()I

    move-result v0

    sget-object v1, Lcom/samsung/android/settings/as/vibration/VibPickerConstants;->COLORFUL_RINGTONE_PATTERN:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static getRingtoneSimpleStartId()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static getSepIndexById(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 268
    sget-object v0, Lcom/samsung/android/settings/as/vibration/VibPickerConstants;->BASE_LOOKUP_TABLE:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 269
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 270
    sget-object p0, Lcom/samsung/android/settings/as/vibration/VibPickerConstants;->BASE_LOOKUP_TABLE:Ljava/util/HashMap;

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 273
    :cond_1
    sget-object p0, Lcom/samsung/android/settings/as/vibration/VibPickerConstants;->BASE_LOOKUP_TABLE:Ljava/util/HashMap;

    const-string v0, "1"

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method
