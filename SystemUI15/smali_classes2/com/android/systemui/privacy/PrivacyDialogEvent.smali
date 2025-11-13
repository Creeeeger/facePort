.class public final enum Lcom/android/systemui/privacy/PrivacyDialogEvent;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/internal/logging/UiEventLogger$UiEventEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/privacy/PrivacyDialogEvent;",
        ">;",
        "Lcom/android/internal/logging/UiEventLogger$UiEventEnum;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/privacy/PrivacyDialogEvent;

.field public static final enum PRIVACY_DIALOG_CLICK_TO_PRIVACY_DASHBOARD:Lcom/android/systemui/privacy/PrivacyDialogEvent;

.field public static final enum PRIVACY_DIALOG_DISMISSED:Lcom/android/systemui/privacy/PrivacyDialogEvent;

.field public static final enum PRIVACY_DIALOG_ITEM_CLICKED_TO_APP_SETTINGS:Lcom/android/systemui/privacy/PrivacyDialogEvent;

.field public static final enum PRIVACY_DIALOG_ITEM_CLICKED_TO_CLOSE_APP:Lcom/android/systemui/privacy/PrivacyDialogEvent;


# instance fields
.field private final _id:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/android/systemui/privacy/PrivacyDialogEvent;

    const/4 v1, 0x0

    const/16 v2, 0x388

    const-string v3, "PRIVACY_DIALOG_ITEM_CLICKED_TO_APP_SETTINGS"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/systemui/privacy/PrivacyDialogEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/privacy/PrivacyDialogEvent;->PRIVACY_DIALOG_ITEM_CLICKED_TO_APP_SETTINGS:Lcom/android/systemui/privacy/PrivacyDialogEvent;

    new-instance v1, Lcom/android/systemui/privacy/PrivacyDialogEvent;

    const/4 v2, 0x1

    const/16 v3, 0x389

    const-string v4, "PRIVACY_DIALOG_DISMISSED"

    invoke-direct {v1, v4, v2, v3}, Lcom/android/systemui/privacy/PrivacyDialogEvent;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/systemui/privacy/PrivacyDialogEvent;->PRIVACY_DIALOG_DISMISSED:Lcom/android/systemui/privacy/PrivacyDialogEvent;

    new-instance v2, Lcom/android/systemui/privacy/PrivacyDialogEvent;

    const/4 v3, 0x2

    const/16 v4, 0x574

    const-string v5, "PRIVACY_DIALOG_ITEM_CLICKED_TO_CLOSE_APP"

    invoke-direct {v2, v5, v3, v4}, Lcom/android/systemui/privacy/PrivacyDialogEvent;-><init>(Ljava/lang/String;II)V

    new-instance v3, Lcom/android/systemui/privacy/PrivacyDialogEvent;

    const/4 v4, 0x3

    const/16 v5, 0x575

    const-string v6, "PRIVACY_DIALOG_CLICK_TO_PRIVACY_DASHBOARD"

    invoke-direct {v3, v6, v4, v5}, Lcom/android/systemui/privacy/PrivacyDialogEvent;-><init>(Ljava/lang/String;II)V

    filled-new-array {v0, v1, v2, v3}, [Lcom/android/systemui/privacy/PrivacyDialogEvent;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/privacy/PrivacyDialogEvent;->$VALUES:[Lcom/android/systemui/privacy/PrivacyDialogEvent;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

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

    iput p3, p0, Lcom/android/systemui/privacy/PrivacyDialogEvent;->_id:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/privacy/PrivacyDialogEvent;
    .locals 1

    const-class v0, Lcom/android/systemui/privacy/PrivacyDialogEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/privacy/PrivacyDialogEvent;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/privacy/PrivacyDialogEvent;
    .locals 1

    sget-object v0, Lcom/android/systemui/privacy/PrivacyDialogEvent;->$VALUES:[Lcom/android/systemui/privacy/PrivacyDialogEvent;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/privacy/PrivacyDialogEvent;

    return-object v0
.end method


# virtual methods
.method public final getId()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/privacy/PrivacyDialogEvent;->_id:I

    return p0
.end method
