.class final enum Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment$ShortcutEditPreferenceType;
.super Ljava/lang/Enum;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ShortcutEditPreferenceType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment$ShortcutEditPreferenceType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment$ShortcutEditPreferenceType;

.field public static final enum DIRECT:Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment$ShortcutEditPreferenceType;

.field public static final enum HARDWARE:Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment$ShortcutEditPreferenceType;

.field public static final enum QUICK_SETTINGS:Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment$ShortcutEditPreferenceType;

.field public static final enum SOFTWARE:Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment$ShortcutEditPreferenceType;

.field public static final enum TRIPLETAP:Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment$ShortcutEditPreferenceType;


# instance fields
.field final argumentDefault:Z

.field final argumentKey:Ljava/lang/String;

.field final preferenceKey:Ljava/lang/String;

.field final shortcutType:I

.field final titleRes:I


# direct methods
.method static constructor <clinit>()V
    .locals 25

    new-instance v8, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment$ShortcutEditPreferenceType;

    const-string v6, "isSupportQuickSettings"

    const/4 v7, 0x1

    const-string v1, "QUICK_SETTINGS"

    const/4 v2, 0x0

    const-string/jumbo v3, "quick_settings"

    const/16 v4, 0x10

    const v5, 0x7f1400d4

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment$ShortcutEditPreferenceType;-><init>(Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;Z)V

    sput-object v8, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment$ShortcutEditPreferenceType;->QUICK_SETTINGS:Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment$ShortcutEditPreferenceType;

    new-instance v0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment$ShortcutEditPreferenceType;

    const-string v15, "isSupportSoftware"

    const/16 v16, 0x1

    const-string v10, "SOFTWARE"

    const/4 v11, 0x1

    const-string/jumbo v12, "software"

    const/4 v13, 0x1

    const v14, 0x7f1401aa

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment$ShortcutEditPreferenceType;-><init>(Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;Z)V

    sput-object v0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment$ShortcutEditPreferenceType;->SOFTWARE:Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment$ShortcutEditPreferenceType;

    new-instance v1, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment$ShortcutEditPreferenceType;

    const-string v23, "isSupportDirect"

    const/16 v24, 0x1

    const-string v18, "DIRECT"

    const/16 v19, 0x2

    const-string v20, "direct"

    const/16 v21, 0x200

    const v22, 0x7f1401a8

    move-object/from16 v17, v1

    invoke-direct/range {v17 .. v24}, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment$ShortcutEditPreferenceType;-><init>(Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;Z)V

    sput-object v1, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment$ShortcutEditPreferenceType;->DIRECT:Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment$ShortcutEditPreferenceType;

    new-instance v2, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment$ShortcutEditPreferenceType;

    const-string v15, "isSupportHardware"

    const-string v10, "HARDWARE"

    const/4 v11, 0x3

    const-string v12, "hardware"

    const/4 v13, 0x2

    const v14, 0x7f140195

    move-object v9, v2

    invoke-direct/range {v9 .. v16}, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment$ShortcutEditPreferenceType;-><init>(Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;Z)V

    sput-object v2, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment$ShortcutEditPreferenceType;->HARDWARE:Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment$ShortcutEditPreferenceType;

    new-instance v3, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment$ShortcutEditPreferenceType;

    const-string v23, "isSupportTriple"

    const/16 v24, 0x0

    const-string v18, "TRIPLETAP"

    const/16 v19, 0x4

    const-string/jumbo v20, "tripletap"

    const/16 v21, 0x4

    const v22, 0x7f140196

    move-object/from16 v17, v3

    invoke-direct/range {v17 .. v24}, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment$ShortcutEditPreferenceType;-><init>(Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;Z)V

    sput-object v3, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment$ShortcutEditPreferenceType;->TRIPLETAP:Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment$ShortcutEditPreferenceType;

    filled-new-array {v8, v0, v1, v2, v3}, [Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment$ShortcutEditPreferenceType;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment$ShortcutEditPreferenceType;->$VALUES:[Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment$ShortcutEditPreferenceType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment$ShortcutEditPreferenceType;->preferenceKey:Ljava/lang/String;

    iput p4, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment$ShortcutEditPreferenceType;->shortcutType:I

    iput p5, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment$ShortcutEditPreferenceType;->titleRes:I

    iput-object p6, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment$ShortcutEditPreferenceType;->argumentKey:Ljava/lang/String;

    iput-boolean p7, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment$ShortcutEditPreferenceType;->argumentDefault:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment$ShortcutEditPreferenceType;
    .locals 1

    const-class v0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment$ShortcutEditPreferenceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment$ShortcutEditPreferenceType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment$ShortcutEditPreferenceType;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment$ShortcutEditPreferenceType;->$VALUES:[Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment$ShortcutEditPreferenceType;

    invoke-virtual {v0}, [Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment$ShortcutEditPreferenceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment$ShortcutEditPreferenceType;

    return-object v0
.end method
