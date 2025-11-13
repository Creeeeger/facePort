.class public final Lcom/android/systemui/controls/ui/ControlViewHolder$findBehaviorClass$7;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Supplier;


# static fields
.field public static final INSTANCE:Lcom/android/systemui/controls/ui/ControlViewHolder$findBehaviorClass$7;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/controls/ui/ControlViewHolder$findBehaviorClass$7;

    invoke-direct {v0}, Lcom/android/systemui/controls/ui/ControlViewHolder$findBehaviorClass$7;-><init>()V

    sput-object v0, Lcom/android/systemui/controls/ui/ControlViewHolder$findBehaviorClass$7;->INSTANCE:Lcom/android/systemui/controls/ui/ControlViewHolder$findBehaviorClass$7;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    new-instance p0, Lcom/android/systemui/controls/ui/TouchBehavior;

    invoke-direct {p0}, Lcom/android/systemui/controls/ui/TouchBehavior;-><init>()V

    return-object p0
.end method
