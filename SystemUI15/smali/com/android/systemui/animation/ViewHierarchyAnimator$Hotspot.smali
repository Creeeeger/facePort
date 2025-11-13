.class public final enum Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;

.field public static final enum BOTTOM:Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;

.field public static final enum BOTTOM_LEFT:Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;

.field public static final enum BOTTOM_RIGHT:Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;

.field public static final enum CENTER:Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;

.field public static final enum LEFT:Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;

.field public static final enum RIGHT:Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;

.field public static final enum TOP:Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;

.field public static final enum TOP_LEFT:Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;

.field public static final enum TOP_RIGHT:Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;

    const-string v1, "CENTER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;->CENTER:Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;

    new-instance v1, Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;

    const-string v2, "LEFT"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;->LEFT:Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;

    new-instance v2, Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;

    const-string v3, "TOP_LEFT"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;->TOP_LEFT:Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;

    new-instance v3, Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;

    const-string v4, "TOP"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;->TOP:Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;

    new-instance v4, Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;

    const-string v5, "TOP_RIGHT"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;->TOP_RIGHT:Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;

    new-instance v5, Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;

    const-string v6, "RIGHT"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;->RIGHT:Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;

    new-instance v6, Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;

    const-string v7, "BOTTOM_RIGHT"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;->BOTTOM_RIGHT:Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;

    new-instance v7, Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;

    const-string v8, "BOTTOM"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;->BOTTOM:Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;

    new-instance v8, Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;

    const-string v9, "BOTTOM_LEFT"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;->BOTTOM_LEFT:Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;

    filled-new-array/range {v0 .. v8}, [Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;->$VALUES:[Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;
    .locals 1

    const-class v0, Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;
    .locals 1

    sget-object v0, Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;->$VALUES:[Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;

    return-object v0
.end method
