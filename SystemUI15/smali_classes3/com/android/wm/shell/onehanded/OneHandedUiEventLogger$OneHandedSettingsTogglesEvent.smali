.class public final enum Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/internal/logging/UiEventLogger$UiEventEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;",
        ">;",
        "Lcom/android/internal/logging/UiEventLogger$UiEventEnum;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;

.field public static final enum ONE_HANDED_SETTINGS_TOGGLES_APP_TAPS_EXIT_OFF:Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;

.field public static final enum ONE_HANDED_SETTINGS_TOGGLES_APP_TAPS_EXIT_ON:Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;

.field public static final enum ONE_HANDED_SETTINGS_TOGGLES_ENABLED_OFF:Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;

.field public static final enum ONE_HANDED_SETTINGS_TOGGLES_ENABLED_ON:Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;

.field public static final enum ONE_HANDED_SETTINGS_TOGGLES_SHORTCUT_ENABLED_OFF:Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;

.field public static final enum ONE_HANDED_SETTINGS_TOGGLES_SHORTCUT_ENABLED_ON:Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;

.field public static final enum ONE_HANDED_SETTINGS_TOGGLES_SHOW_NOTIFICATION_ENABLED_OFF:Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;

.field public static final enum ONE_HANDED_SETTINGS_TOGGLES_SHOW_NOTIFICATION_ENABLED_ON:Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;

.field public static final enum ONE_HANDED_SETTINGS_TOGGLES_TIMEOUT_EXIT_OFF:Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;

.field public static final enum ONE_HANDED_SETTINGS_TOGGLES_TIMEOUT_EXIT_ON:Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;

.field public static final enum ONE_HANDED_SETTINGS_TOGGLES_TIMEOUT_SECONDS_12:Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;

.field public static final enum ONE_HANDED_SETTINGS_TOGGLES_TIMEOUT_SECONDS_4:Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;

.field public static final enum ONE_HANDED_SETTINGS_TOGGLES_TIMEOUT_SECONDS_8:Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;

.field public static final enum ONE_HANDED_SETTINGS_TOGGLES_TIMEOUT_SECONDS_NEVER:Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;


# instance fields
.field private final mId:I


# direct methods
.method static constructor <clinit>()V
    .locals 18

    new-instance v0, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;

    const-string v1, "INVALID"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;-><init>(Ljava/lang/String;II)V

    new-instance v1, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;

    const/16 v2, 0x164

    const-string v3, "ONE_HANDED_SETTINGS_TOGGLES_ENABLED_ON"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;->ONE_HANDED_SETTINGS_TOGGLES_ENABLED_ON:Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;

    new-instance v2, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;

    const/16 v3, 0x165

    const-string v4, "ONE_HANDED_SETTINGS_TOGGLES_ENABLED_OFF"

    const/4 v5, 0x2

    invoke-direct {v2, v4, v5, v3}, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;->ONE_HANDED_SETTINGS_TOGGLES_ENABLED_OFF:Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;

    new-instance v3, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;

    const/16 v4, 0x166

    const-string v5, "ONE_HANDED_SETTINGS_TOGGLES_APP_TAPS_EXIT_ON"

    const/4 v6, 0x3

    invoke-direct {v3, v5, v6, v4}, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;->ONE_HANDED_SETTINGS_TOGGLES_APP_TAPS_EXIT_ON:Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;

    new-instance v4, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;

    const/16 v5, 0x167

    const-string v6, "ONE_HANDED_SETTINGS_TOGGLES_APP_TAPS_EXIT_OFF"

    const/4 v7, 0x4

    invoke-direct {v4, v6, v7, v5}, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;->ONE_HANDED_SETTINGS_TOGGLES_APP_TAPS_EXIT_OFF:Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;

    new-instance v5, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;

    const/16 v6, 0x168

    const-string v7, "ONE_HANDED_SETTINGS_TOGGLES_TIMEOUT_EXIT_ON"

    const/4 v8, 0x5

    invoke-direct {v5, v7, v8, v6}, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;->ONE_HANDED_SETTINGS_TOGGLES_TIMEOUT_EXIT_ON:Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;

    new-instance v6, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;

    const/16 v7, 0x169

    const-string v8, "ONE_HANDED_SETTINGS_TOGGLES_TIMEOUT_EXIT_OFF"

    const/4 v9, 0x6

    invoke-direct {v6, v8, v9, v7}, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;->ONE_HANDED_SETTINGS_TOGGLES_TIMEOUT_EXIT_OFF:Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;

    new-instance v7, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;

    const/16 v8, 0x16a

    const-string v9, "ONE_HANDED_SETTINGS_TOGGLES_TIMEOUT_SECONDS_NEVER"

    const/4 v10, 0x7

    invoke-direct {v7, v9, v10, v8}, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;->ONE_HANDED_SETTINGS_TOGGLES_TIMEOUT_SECONDS_NEVER:Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;

    new-instance v8, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;

    const/16 v9, 0x16b

    const-string v10, "ONE_HANDED_SETTINGS_TOGGLES_TIMEOUT_SECONDS_4"

    const/16 v11, 0x8

    invoke-direct {v8, v10, v11, v9}, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;->ONE_HANDED_SETTINGS_TOGGLES_TIMEOUT_SECONDS_4:Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;

    new-instance v9, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;

    const/16 v10, 0x16c

    const-string v11, "ONE_HANDED_SETTINGS_TOGGLES_TIMEOUT_SECONDS_8"

    const/16 v12, 0x9

    invoke-direct {v9, v11, v12, v10}, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;->ONE_HANDED_SETTINGS_TOGGLES_TIMEOUT_SECONDS_8:Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;

    new-instance v10, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;

    const/16 v11, 0x16d

    const-string v12, "ONE_HANDED_SETTINGS_TOGGLES_TIMEOUT_SECONDS_12"

    const/16 v13, 0xa

    invoke-direct {v10, v12, v13, v11}, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;->ONE_HANDED_SETTINGS_TOGGLES_TIMEOUT_SECONDS_12:Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;

    new-instance v11, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;

    const/16 v12, 0x34f

    const-string v13, "ONE_HANDED_SETTINGS_TOGGLES_SHOW_NOTIFICATION_ENABLED_ON"

    const/16 v14, 0xb

    invoke-direct {v11, v13, v14, v12}, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;->ONE_HANDED_SETTINGS_TOGGLES_SHOW_NOTIFICATION_ENABLED_ON:Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;

    new-instance v12, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;

    const/16 v13, 0x350

    const-string v14, "ONE_HANDED_SETTINGS_TOGGLES_SHOW_NOTIFICATION_ENABLED_OFF"

    const/16 v15, 0xc

    invoke-direct {v12, v14, v15, v13}, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;->ONE_HANDED_SETTINGS_TOGGLES_SHOW_NOTIFICATION_ENABLED_OFF:Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;

    new-instance v13, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;

    const/16 v14, 0x366

    const-string v15, "ONE_HANDED_SETTINGS_TOGGLES_SHORTCUT_ENABLED_ON"

    move-object/from16 v16, v12

    const/16 v12, 0xd

    invoke-direct {v13, v15, v12, v14}, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;->ONE_HANDED_SETTINGS_TOGGLES_SHORTCUT_ENABLED_ON:Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;

    new-instance v14, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;

    const/16 v12, 0x367

    const-string v15, "ONE_HANDED_SETTINGS_TOGGLES_SHORTCUT_ENABLED_OFF"

    move-object/from16 v17, v13

    const/16 v13, 0xe

    invoke-direct {v14, v15, v13, v12}, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;->ONE_HANDED_SETTINGS_TOGGLES_SHORTCUT_ENABLED_OFF:Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;

    move-object/from16 v12, v16

    move-object/from16 v13, v17

    filled-new-array/range {v0 .. v14}, [Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;

    move-result-object v0

    sput-object v0, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;->$VALUES:[Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;->mId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;
    .locals 1

    const-class v0, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;

    return-object p0
.end method

.method public static values()[Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;
    .locals 1

    sget-object v0, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;->$VALUES:[Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;

    invoke-virtual {v0}, [Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;

    return-object v0
.end method


# virtual methods
.method public final getId()I
    .locals 0

    iget p0, p0, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;->mId:I

    return p0
.end method
