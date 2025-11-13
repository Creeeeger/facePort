.class public abstract enum Lcom/samsung/android/settings/asbase/vibration/VibPickerListItemViewType;
.super Ljava/lang/Enum;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/settings/asbase/vibration/VibPickerListItemViewType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/samsung/android/settings/asbase/vibration/VibPickerListItemViewType;

.field public static final enum BOTTOM_VIEW:Lcom/samsung/android/settings/asbase/vibration/VibPickerListItemViewType;

.field public static final enum FOOTER_VIEW:Lcom/samsung/android/settings/asbase/vibration/VibPickerListItemViewType;

.field public static final enum MIDDLE_VIEW:Lcom/samsung/android/settings/asbase/vibration/VibPickerListItemViewType;

.field public static final enum TOP_VIEW:Lcom/samsung/android/settings/asbase/vibration/VibPickerListItemViewType;

.field public static final typeMap:Ljava/util/Map;


# instance fields
.field private final type:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/samsung/android/settings/asbase/vibration/VibPickerListItemViewType$1;

    const-string v1, "TOP_VIEW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/settings/asbase/vibration/VibPickerListItemViewType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/settings/asbase/vibration/VibPickerListItemViewType;->TOP_VIEW:Lcom/samsung/android/settings/asbase/vibration/VibPickerListItemViewType;

    new-instance v1, Lcom/samsung/android/settings/asbase/vibration/VibPickerListItemViewType$2;

    const-string v2, "MIDDLE_VIEW"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/samsung/android/settings/asbase/vibration/VibPickerListItemViewType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/samsung/android/settings/asbase/vibration/VibPickerListItemViewType;->MIDDLE_VIEW:Lcom/samsung/android/settings/asbase/vibration/VibPickerListItemViewType;

    new-instance v2, Lcom/samsung/android/settings/asbase/vibration/VibPickerListItemViewType$3;

    const-string v3, "BOTTOM_VIEW"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/samsung/android/settings/asbase/vibration/VibPickerListItemViewType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/samsung/android/settings/asbase/vibration/VibPickerListItemViewType;->BOTTOM_VIEW:Lcom/samsung/android/settings/asbase/vibration/VibPickerListItemViewType;

    new-instance v3, Lcom/samsung/android/settings/asbase/vibration/VibPickerListItemViewType$4;

    const-string v4, "FOOTER_VIEW"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lcom/samsung/android/settings/asbase/vibration/VibPickerListItemViewType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/samsung/android/settings/asbase/vibration/VibPickerListItemViewType;->FOOTER_VIEW:Lcom/samsung/android/settings/asbase/vibration/VibPickerListItemViewType;

    filled-new-array {v0, v1, v2, v3}, [Lcom/samsung/android/settings/asbase/vibration/VibPickerListItemViewType;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/asbase/vibration/VibPickerListItemViewType;->$VALUES:[Lcom/samsung/android/settings/asbase/vibration/VibPickerListItemViewType;

    new-instance v0, Lcom/samsung/android/settings/asbase/vibration/VibPickerListItemViewType$5;

    invoke-direct {v0}, Lcom/samsung/android/settings/asbase/vibration/VibPickerListItemViewType$5;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/asbase/vibration/VibPickerListItemViewType;->typeMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerListItemViewType;->type:I

    return-void
.end method

.method public static getViewTypeByPosition(II)I
    .locals 1

    if-nez p0, :cond_0

    sget-object p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerListItemViewType;->TOP_VIEW:Lcom/samsung/android/settings/asbase/vibration/VibPickerListItemViewType;

    iget p0, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerListItemViewType;->type:I

    return p0

    :cond_0
    add-int/lit8 v0, p1, -0x2

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerListItemViewType;->BOTTOM_VIEW:Lcom/samsung/android/settings/asbase/vibration/VibPickerListItemViewType;

    iget p0, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerListItemViewType;->type:I

    return p0

    :cond_1
    add-int/lit8 p1, p1, -0x1

    if-ne p0, p1, :cond_2

    sget-object p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerListItemViewType;->FOOTER_VIEW:Lcom/samsung/android/settings/asbase/vibration/VibPickerListItemViewType;

    iget p0, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerListItemViewType;->type:I

    return p0

    :cond_2
    sget-object p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerListItemViewType;->MIDDLE_VIEW:Lcom/samsung/android/settings/asbase/vibration/VibPickerListItemViewType;

    iget p0, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerListItemViewType;->type:I

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/settings/asbase/vibration/VibPickerListItemViewType;
    .locals 1

    const-class v0, Lcom/samsung/android/settings/asbase/vibration/VibPickerListItemViewType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerListItemViewType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/settings/asbase/vibration/VibPickerListItemViewType;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/asbase/vibration/VibPickerListItemViewType;->$VALUES:[Lcom/samsung/android/settings/asbase/vibration/VibPickerListItemViewType;

    invoke-virtual {v0}, [Lcom/samsung/android/settings/asbase/vibration/VibPickerListItemViewType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/settings/asbase/vibration/VibPickerListItemViewType;

    return-object v0
.end method


# virtual methods
.method public abstract getRoundMode()I
.end method

.method public final getValue()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerListItemViewType;->type:I

    return p0
.end method

.method public abstract getView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/content/Context;)Landroid/view/View;
.end method
