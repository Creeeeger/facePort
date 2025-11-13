.class final synthetic Lcom/android/systemui/statusbar/notification/collection/coordinator/SensitiveContentCoordinatorKt$extractAllRepresentativeEntries$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function1;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/systemui/statusbar/notification/collection/coordinator/SensitiveContentCoordinatorKt$extractAllRepresentativeEntries$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SensitiveContentCoordinatorKt$extractAllRepresentativeEntries$1;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/SensitiveContentCoordinatorKt$extractAllRepresentativeEntries$1;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SensitiveContentCoordinatorKt$extractAllRepresentativeEntries$1;->INSTANCE:Lcom/android/systemui/statusbar/notification/collection/coordinator/SensitiveContentCoordinatorKt$extractAllRepresentativeEntries$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const-string v4, "extractAllRepresentativeEntries(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Lkotlin/sequences/Sequence;"

    const/4 v5, 0x1

    const/4 v1, 0x1

    const-class v2, Lcom/android/systemui/statusbar/notification/collection/coordinator/SensitiveContentCoordinatorKt;

    const-string v3, "extractAllRepresentativeEntries"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/systemui/statusbar/notification/collection/ListEntry;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/SensitiveContentCoordinatorKt$extractAllRepresentativeEntries$1;->invoke(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Lkotlin/sequences/Sequence;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Lkotlin/sequences/Sequence;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/notification/collection/ListEntry;",
            ")",
            "Lkotlin/sequences/Sequence;"
        }
    .end annotation

    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/SensitiveContentCoordinatorKt;->access$extractAllRepresentativeEntries(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Lkotlin/sequences/Sequence;

    move-result-object p0

    return-object p0
.end method
