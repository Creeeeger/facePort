.class public final Lcom/android/systemui/statusbar/notification/RoundableState;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final Companion:Lcom/android/systemui/statusbar/notification/RoundableState$Companion;

.field public static final DURATION:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;


# instance fields
.field public final bottomAnimatable:Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;

.field public bottomRoundness:F

.field public final bottomRoundnessMap:Ljava/util/Map;

.field public maxRadius:F

.field public final roundable:Lcom/android/systemui/statusbar/notification/Roundable;

.field public final targetView:Landroid/view/View;

.field public final topAnimatable:Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;

.field public topRoundness:F

.field public final topRoundnessMap:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/systemui/statusbar/notification/RoundableState$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/notification/RoundableState$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/statusbar/notification/RoundableState;->Companion:Lcom/android/systemui/statusbar/notification/RoundableState$Companion;

    new-instance v0, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;-><init>()V

    const-wide/16 v1, 0xc8

    iput-wide v1, v0, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->duration:J

    sput-object v0, Lcom/android/systemui/statusbar/notification/RoundableState;->DURATION:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/android/systemui/statusbar/notification/Roundable;F)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/RoundableState;->targetView:Landroid/view/View;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/RoundableState;->roundable:Lcom/android/systemui/statusbar/notification/Roundable;

    iput p3, p0, Lcom/android/systemui/statusbar/notification/RoundableState;->maxRadius:F

    sget-object p1, Lcom/android/systemui/statusbar/notification/RoundableState;->Companion:Lcom/android/systemui/statusbar/notification/RoundableState$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/android/systemui/statusbar/notification/RoundableState$Companion$topAnimatable$1;

    invoke-direct {p1, p2}, Lcom/android/systemui/statusbar/notification/RoundableState$Companion$topAnimatable$1;-><init>(Lcom/android/systemui/statusbar/notification/Roundable;)V

    sget-object p3, Lcom/android/systemui/statusbar/notification/AnimatableProperty;->Y:Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;

    new-instance p3, Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;

    const v0, 0x7f0a0d66

    const v1, 0x7f0a0d67

    const v2, 0x7f0a0d68

    invoke-direct {p3, v0, v1, v2, p1}, Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;-><init>(IIILandroid/util/Property;)V

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/RoundableState;->topAnimatable:Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;

    new-instance p1, Lcom/android/systemui/statusbar/notification/RoundableState$Companion$bottomAnimatable$1;

    invoke-direct {p1, p2}, Lcom/android/systemui/statusbar/notification/RoundableState$Companion$bottomAnimatable$1;-><init>(Lcom/android/systemui/statusbar/notification/Roundable;)V

    new-instance p2, Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;

    const p3, 0x7f0a01b2

    const v0, 0x7f0a01b3

    const v1, 0x7f0a01b4

    invoke-direct {p2, p3, v0, v1, p1}, Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;-><init>(IIILandroid/util/Property;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/RoundableState;->bottomAnimatable:Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/RoundableState;->topRoundnessMap:Ljava/util/Map;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/RoundableState;->bottomRoundnessMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final debugString()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Roundable { "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/systemui/statusbar/notification/RoundableState;->topRoundness:F

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/RoundableState;->topRoundnessMap:Ljava/util/Map;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "top: { value: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", requests: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "}"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/systemui/statusbar/notification/RoundableState;->bottomRoundness:F

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/RoundableState;->bottomRoundnessMap:Ljava/util/Map;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "bottom: { value: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, v2}, Landroidx/activity/ComponentActivity$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
