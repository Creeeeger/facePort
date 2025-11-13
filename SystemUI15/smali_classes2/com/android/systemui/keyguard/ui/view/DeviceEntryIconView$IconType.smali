.class public final enum Lcom/android/systemui/keyguard/ui/view/DeviceEntryIconView$IconType;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/keyguard/ui/view/DeviceEntryIconView$IconType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/keyguard/ui/view/DeviceEntryIconView$IconType;

.field public static final enum FINGERPRINT:Lcom/android/systemui/keyguard/ui/view/DeviceEntryIconView$IconType;

.field public static final enum LOCK:Lcom/android/systemui/keyguard/ui/view/DeviceEntryIconView$IconType;

.field public static final enum NONE:Lcom/android/systemui/keyguard/ui/view/DeviceEntryIconView$IconType;

.field public static final enum UNLOCK:Lcom/android/systemui/keyguard/ui/view/DeviceEntryIconView$IconType;


# instance fields
.field private final contentDescriptionResId:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/android/systemui/keyguard/ui/view/DeviceEntryIconView$IconType;

    const/4 v1, 0x0

    const v2, 0x7f1300bb

    const-string v3, "LOCK"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/systemui/keyguard/ui/view/DeviceEntryIconView$IconType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/keyguard/ui/view/DeviceEntryIconView$IconType;->LOCK:Lcom/android/systemui/keyguard/ui/view/DeviceEntryIconView$IconType;

    new-instance v1, Lcom/android/systemui/keyguard/ui/view/DeviceEntryIconView$IconType;

    const/4 v2, 0x1

    const v3, 0x7f130147

    const-string v4, "UNLOCK"

    invoke-direct {v1, v4, v2, v3}, Lcom/android/systemui/keyguard/ui/view/DeviceEntryIconView$IconType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/systemui/keyguard/ui/view/DeviceEntryIconView$IconType;->UNLOCK:Lcom/android/systemui/keyguard/ui/view/DeviceEntryIconView$IconType;

    new-instance v2, Lcom/android/systemui/keyguard/ui/view/DeviceEntryIconView$IconType;

    const/4 v3, 0x2

    const v4, 0x7f13009a

    const-string v5, "FINGERPRINT"

    invoke-direct {v2, v5, v3, v4}, Lcom/android/systemui/keyguard/ui/view/DeviceEntryIconView$IconType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/systemui/keyguard/ui/view/DeviceEntryIconView$IconType;->FINGERPRINT:Lcom/android/systemui/keyguard/ui/view/DeviceEntryIconView$IconType;

    new-instance v3, Lcom/android/systemui/keyguard/ui/view/DeviceEntryIconView$IconType;

    const/4 v4, 0x3

    const/4 v5, -0x1

    const-string v6, "NONE"

    invoke-direct {v3, v6, v4, v5}, Lcom/android/systemui/keyguard/ui/view/DeviceEntryIconView$IconType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/android/systemui/keyguard/ui/view/DeviceEntryIconView$IconType;->NONE:Lcom/android/systemui/keyguard/ui/view/DeviceEntryIconView$IconType;

    filled-new-array {v0, v1, v2, v3}, [Lcom/android/systemui/keyguard/ui/view/DeviceEntryIconView$IconType;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/keyguard/ui/view/DeviceEntryIconView$IconType;->$VALUES:[Lcom/android/systemui/keyguard/ui/view/DeviceEntryIconView$IconType;

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

    iput p3, p0, Lcom/android/systemui/keyguard/ui/view/DeviceEntryIconView$IconType;->contentDescriptionResId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/keyguard/ui/view/DeviceEntryIconView$IconType;
    .locals 1

    const-class v0, Lcom/android/systemui/keyguard/ui/view/DeviceEntryIconView$IconType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/keyguard/ui/view/DeviceEntryIconView$IconType;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/keyguard/ui/view/DeviceEntryIconView$IconType;
    .locals 1

    sget-object v0, Lcom/android/systemui/keyguard/ui/view/DeviceEntryIconView$IconType;->$VALUES:[Lcom/android/systemui/keyguard/ui/view/DeviceEntryIconView$IconType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/keyguard/ui/view/DeviceEntryIconView$IconType;

    return-object v0
.end method


# virtual methods
.method public final getContentDescriptionResId()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/keyguard/ui/view/DeviceEntryIconView$IconType;->contentDescriptionResId:I

    return p0
.end method
