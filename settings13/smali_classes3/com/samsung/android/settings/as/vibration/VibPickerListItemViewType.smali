.class public abstract enum Lcom/samsung/android/settings/as/vibration/VibPickerListItemViewType;
.super Ljava/lang/Enum;
.source "VibPickerListItemViewType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/settings/as/vibration/VibPickerListItemViewType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/settings/as/vibration/VibPickerListItemViewType;

.field public static final enum BOTTOM_VIEW:Lcom/samsung/android/settings/as/vibration/VibPickerListItemViewType;

.field public static final enum FOOTER_VIEW:Lcom/samsung/android/settings/as/vibration/VibPickerListItemViewType;

.field public static final enum MIDDLE_VIEW:Lcom/samsung/android/settings/as/vibration/VibPickerListItemViewType;

.field public static final enum TOP_VIEW:Lcom/samsung/android/settings/as/vibration/VibPickerListItemViewType;

.field private static final typeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/settings/as/vibration/VibPickerListItemViewType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final type:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 16
    new-instance v0, Lcom/samsung/android/settings/as/vibration/VibPickerListItemViewType$1;

    const-string v1, "TOP_VIEW"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/samsung/android/settings/as/vibration/VibPickerListItemViewType$1;-><init>(Ljava/lang/String;IILcom/samsung/android/settings/as/vibration/VibPickerListItemViewType$1-IA;)V

    sput-object v0, Lcom/samsung/android/settings/as/vibration/VibPickerListItemViewType;->TOP_VIEW:Lcom/samsung/android/settings/as/vibration/VibPickerListItemViewType;

    .line 28
    new-instance v1, Lcom/samsung/android/settings/as/vibration/VibPickerListItemViewType$2;

    const-string v4, "MIDDLE_VIEW"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v5, v3}, Lcom/samsung/android/settings/as/vibration/VibPickerListItemViewType$2;-><init>(Ljava/lang/String;IILcom/samsung/android/settings/as/vibration/VibPickerListItemViewType$2-IA;)V

    sput-object v1, Lcom/samsung/android/settings/as/vibration/VibPickerListItemViewType;->MIDDLE_VIEW:Lcom/samsung/android/settings/as/vibration/VibPickerListItemViewType;

    .line 39
    new-instance v4, Lcom/samsung/android/settings/as/vibration/VibPickerListItemViewType$3;

    const-string v6, "BOTTOM_VIEW"

    const/4 v7, 0x2

    invoke-direct {v4, v6, v7, v7, v3}, Lcom/samsung/android/settings/as/vibration/VibPickerListItemViewType$3;-><init>(Ljava/lang/String;IILcom/samsung/android/settings/as/vibration/VibPickerListItemViewType$3-IA;)V

    sput-object v4, Lcom/samsung/android/settings/as/vibration/VibPickerListItemViewType;->BOTTOM_VIEW:Lcom/samsung/android/settings/as/vibration/VibPickerListItemViewType;

    .line 56
    new-instance v6, Lcom/samsung/android/settings/as/vibration/VibPickerListItemViewType$4;

    const-string v8, "FOOTER_VIEW"

    const/4 v9, 0x3

    invoke-direct {v6, v8, v9, v9, v3}, Lcom/samsung/android/settings/as/vibration/VibPickerListItemViewType$4;-><init>(Ljava/lang/String;IILcom/samsung/android/settings/as/vibration/VibPickerListItemViewType$4-IA;)V

    sput-object v6, Lcom/samsung/android/settings/as/vibration/VibPickerListItemViewType;->FOOTER_VIEW:Lcom/samsung/android/settings/as/vibration/VibPickerListItemViewType;

    const/4 v3, 0x4

    new-array v3, v3, [Lcom/samsung/android/settings/as/vibration/VibPickerListItemViewType;

    aput-object v0, v3, v2

    aput-object v1, v3, v5

    aput-object v4, v3, v7

    aput-object v6, v3, v9

    .line 15
    sput-object v3, Lcom/samsung/android/settings/as/vibration/VibPickerListItemViewType;->$VALUES:[Lcom/samsung/android/settings/as/vibration/VibPickerListItemViewType;

    .line 69
    new-instance v0, Lcom/samsung/android/settings/as/vibration/VibPickerListItemViewType$5;

    invoke-direct {v0}, Lcom/samsung/android/settings/as/vibration/VibPickerListItemViewType$5;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/as/vibration/VibPickerListItemViewType;->typeMap:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 76
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 77
    iput p3, p0, Lcom/samsung/android/settings/as/vibration/VibPickerListItemViewType;->type:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IILcom/samsung/android/settings/as/vibration/VibPickerListItemViewType-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/settings/as/vibration/VibPickerListItemViewType;-><init>(Ljava/lang/String;II)V

    return-void
.end method

.method public static getViewType(I)Lcom/samsung/android/settings/as/vibration/VibPickerListItemViewType;
    .locals 1

    .line 85
    sget-object v0, Lcom/samsung/android/settings/as/vibration/VibPickerListItemViewType;->typeMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/as/vibration/VibPickerListItemViewType;

    if-eqz p0, :cond_0

    return-object p0

    .line 90
    :cond_0
    sget-object p0, Lcom/samsung/android/settings/as/vibration/VibPickerListItemViewType;->MIDDLE_VIEW:Lcom/samsung/android/settings/as/vibration/VibPickerListItemViewType;

    return-object p0
.end method

.method public static getViewTypeByPosition(II)I
    .locals 1

    if-nez p0, :cond_0

    .line 94
    sget-object p0, Lcom/samsung/android/settings/as/vibration/VibPickerListItemViewType;->TOP_VIEW:Lcom/samsung/android/settings/as/vibration/VibPickerListItemViewType;

    invoke-virtual {p0}, Lcom/samsung/android/settings/as/vibration/VibPickerListItemViewType;->getValue()I

    move-result p0

    return p0

    :cond_0
    add-int/lit8 v0, p1, -0x2

    if-ne p0, v0, :cond_1

    .line 96
    sget-object p0, Lcom/samsung/android/settings/as/vibration/VibPickerListItemViewType;->BOTTOM_VIEW:Lcom/samsung/android/settings/as/vibration/VibPickerListItemViewType;

    invoke-virtual {p0}, Lcom/samsung/android/settings/as/vibration/VibPickerListItemViewType;->getValue()I

    move-result p0

    return p0

    :cond_1
    add-int/lit8 p1, p1, -0x1

    if-ne p0, p1, :cond_2

    .line 98
    sget-object p0, Lcom/samsung/android/settings/as/vibration/VibPickerListItemViewType;->FOOTER_VIEW:Lcom/samsung/android/settings/as/vibration/VibPickerListItemViewType;

    invoke-virtual {p0}, Lcom/samsung/android/settings/as/vibration/VibPickerListItemViewType;->getValue()I

    move-result p0

    return p0

    .line 100
    :cond_2
    sget-object p0, Lcom/samsung/android/settings/as/vibration/VibPickerListItemViewType;->MIDDLE_VIEW:Lcom/samsung/android/settings/as/vibration/VibPickerListItemViewType;

    invoke-virtual {p0}, Lcom/samsung/android/settings/as/vibration/VibPickerListItemViewType;->getValue()I

    move-result p0

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/settings/as/vibration/VibPickerListItemViewType;
    .locals 1

    .line 15
    const-class v0, Lcom/samsung/android/settings/as/vibration/VibPickerListItemViewType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/as/vibration/VibPickerListItemViewType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/settings/as/vibration/VibPickerListItemViewType;
    .locals 1

    .line 15
    sget-object v0, Lcom/samsung/android/settings/as/vibration/VibPickerListItemViewType;->$VALUES:[Lcom/samsung/android/settings/as/vibration/VibPickerListItemViewType;

    invoke-virtual {v0}, [Lcom/samsung/android/settings/as/vibration/VibPickerListItemViewType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/settings/as/vibration/VibPickerListItemViewType;

    return-object v0
.end method


# virtual methods
.method public abstract getRoundMode()I
.end method

.method public getValue()I
    .locals 0

    .line 81
    iget p0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerListItemViewType;->type:I

    return p0
.end method

.method public abstract getView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/content/Context;)Landroid/view/View;
.end method
