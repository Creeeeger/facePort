.class public final enum Lcom/android/systemui/qs/QSDndEvent;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/internal/logging/UiEventLogger$UiEventEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/qs/QSDndEvent;",
        ">;",
        "Lcom/android/internal/logging/UiEventLogger$UiEventEnum;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/qs/QSDndEvent;

.field public static final enum QS_DND_CONDITION_SELECT:Lcom/android/systemui/qs/QSDndEvent;

.field public static final enum QS_DND_DIALOG_ENABLE_FOREVER:Lcom/android/systemui/qs/QSDndEvent;

.field public static final enum QS_DND_DIALOG_ENABLE_UNTIL_ALARM:Lcom/android/systemui/qs/QSDndEvent;

.field public static final enum QS_DND_DIALOG_ENABLE_UNTIL_COUNTDOWN:Lcom/android/systemui/qs/QSDndEvent;

.field public static final enum QS_DND_TIME_DOWN:Lcom/android/systemui/qs/QSDndEvent;

.field public static final enum QS_DND_TIME_UP:Lcom/android/systemui/qs/QSDndEvent;


# instance fields
.field private final _id:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/android/systemui/qs/QSDndEvent;

    const/4 v1, 0x0

    const/16 v2, 0x1a4

    const-string v3, "QS_DND_CONDITION_SELECT"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/systemui/qs/QSDndEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/qs/QSDndEvent;->QS_DND_CONDITION_SELECT:Lcom/android/systemui/qs/QSDndEvent;

    new-instance v1, Lcom/android/systemui/qs/QSDndEvent;

    const/4 v2, 0x1

    const/16 v3, 0x1a6

    const-string v4, "QS_DND_TIME_UP"

    invoke-direct {v1, v4, v2, v3}, Lcom/android/systemui/qs/QSDndEvent;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/systemui/qs/QSDndEvent;->QS_DND_TIME_UP:Lcom/android/systemui/qs/QSDndEvent;

    new-instance v2, Lcom/android/systemui/qs/QSDndEvent;

    const/4 v3, 0x2

    const/16 v4, 0x1a7

    const-string v5, "QS_DND_TIME_DOWN"

    invoke-direct {v2, v5, v3, v4}, Lcom/android/systemui/qs/QSDndEvent;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/systemui/qs/QSDndEvent;->QS_DND_TIME_DOWN:Lcom/android/systemui/qs/QSDndEvent;

    new-instance v3, Lcom/android/systemui/qs/QSDndEvent;

    const/4 v4, 0x3

    const/16 v5, 0x3b2

    const-string v6, "QS_DND_DIALOG_ENABLE_FOREVER"

    invoke-direct {v3, v6, v4, v5}, Lcom/android/systemui/qs/QSDndEvent;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/android/systemui/qs/QSDndEvent;->QS_DND_DIALOG_ENABLE_FOREVER:Lcom/android/systemui/qs/QSDndEvent;

    new-instance v4, Lcom/android/systemui/qs/QSDndEvent;

    const/4 v5, 0x4

    const/16 v6, 0x3b3

    const-string v7, "QS_DND_DIALOG_ENABLE_UNTIL_ALARM"

    invoke-direct {v4, v7, v5, v6}, Lcom/android/systemui/qs/QSDndEvent;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/systemui/qs/QSDndEvent;->QS_DND_DIALOG_ENABLE_UNTIL_ALARM:Lcom/android/systemui/qs/QSDndEvent;

    new-instance v5, Lcom/android/systemui/qs/QSDndEvent;

    const/4 v6, 0x5

    const/16 v7, 0x3b4

    const-string v8, "QS_DND_DIALOG_ENABLE_UNTIL_COUNTDOWN"

    invoke-direct {v5, v8, v6, v7}, Lcom/android/systemui/qs/QSDndEvent;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/android/systemui/qs/QSDndEvent;->QS_DND_DIALOG_ENABLE_UNTIL_COUNTDOWN:Lcom/android/systemui/qs/QSDndEvent;

    filled-new-array/range {v0 .. v5}, [Lcom/android/systemui/qs/QSDndEvent;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/qs/QSDndEvent;->$VALUES:[Lcom/android/systemui/qs/QSDndEvent;

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

    iput p3, p0, Lcom/android/systemui/qs/QSDndEvent;->_id:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/qs/QSDndEvent;
    .locals 1

    const-class v0, Lcom/android/systemui/qs/QSDndEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/QSDndEvent;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/qs/QSDndEvent;
    .locals 1

    sget-object v0, Lcom/android/systemui/qs/QSDndEvent;->$VALUES:[Lcom/android/systemui/qs/QSDndEvent;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/qs/QSDndEvent;

    return-object v0
.end method


# virtual methods
.method public final getId()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/qs/QSDndEvent;->_id:I

    return p0
.end method
