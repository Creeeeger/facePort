.class public final Lcom/android/systemui/statusbar/notification/collection/listbuilder/SemiStableSort;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final Companion:Lcom/android/systemui/statusbar/notification/collection/listbuilder/SemiStableSort$Companion;


# instance fields
.field public final preallocatedAdditions$delegate:Lkotlin/Lazy;

.field public final preallocatedMapToIndex$delegate:Lkotlin/Lazy;

.field public final preallocatedMapToIndexComparator$delegate:Lkotlin/Lazy;

.field public final preallocatedWorkspace$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/listbuilder/SemiStableSort$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/SemiStableSort$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/statusbar/notification/collection/listbuilder/SemiStableSort;->Companion:Lcom/android/systemui/statusbar/notification/collection/listbuilder/SemiStableSort$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/android/systemui/statusbar/notification/collection/listbuilder/SemiStableSort$preallocatedWorkspace$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/collection/listbuilder/SemiStableSort$preallocatedWorkspace$2;

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/listbuilder/SemiStableSort;->preallocatedWorkspace$delegate:Lkotlin/Lazy;

    sget-object v0, Lcom/android/systemui/statusbar/notification/collection/listbuilder/SemiStableSort$preallocatedAdditions$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/collection/listbuilder/SemiStableSort$preallocatedAdditions$2;

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/listbuilder/SemiStableSort;->preallocatedAdditions$delegate:Lkotlin/Lazy;

    sget-object v0, Lcom/android/systemui/statusbar/notification/collection/listbuilder/SemiStableSort$preallocatedMapToIndex$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/collection/listbuilder/SemiStableSort$preallocatedMapToIndex$2;

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/listbuilder/SemiStableSort;->preallocatedMapToIndex$delegate:Lkotlin/Lazy;

    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/listbuilder/SemiStableSort$preallocatedMapToIndexComparator$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/SemiStableSort$preallocatedMapToIndexComparator$2;-><init>(Lcom/android/systemui/statusbar/notification/collection/listbuilder/SemiStableSort;)V

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/listbuilder/SemiStableSort;->preallocatedMapToIndexComparator$delegate:Lkotlin/Lazy;

    return-void
.end method


# virtual methods
.method public final getPreallocatedAdditions()Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/listbuilder/SemiStableSort;->preallocatedAdditions$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    return-object p0
.end method
