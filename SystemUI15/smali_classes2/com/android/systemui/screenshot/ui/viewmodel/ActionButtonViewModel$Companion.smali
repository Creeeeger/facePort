.class public final Lcom/android/systemui/screenshot/ui/viewmodel/ActionButtonViewModel$Companion;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/screenshot/ui/viewmodel/ActionButtonViewModel$Companion;-><init>()V

    return-void
.end method

.method public static withNextId(Lcom/android/systemui/screenshot/ui/viewmodel/ActionButtonAppearance;Lkotlin/jvm/functions/Function0;)Lcom/android/systemui/screenshot/ui/viewmodel/ActionButtonViewModel;
    .locals 7

    new-instance v6, Lcom/android/systemui/screenshot/ui/viewmodel/ActionButtonViewModel;

    sget v2, Lcom/android/systemui/screenshot/ui/viewmodel/ActionButtonViewModel;->nextId:I

    add-int/lit8 v0, v2, 0x1

    sput v0, Lcom/android/systemui/screenshot/ui/viewmodel/ActionButtonViewModel;->nextId:I

    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object v0, v6

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/screenshot/ui/viewmodel/ActionButtonViewModel;-><init>(Lcom/android/systemui/screenshot/ui/viewmodel/ActionButtonAppearance;IZZLkotlin/jvm/functions/Function0;)V

    return-object v6
.end method
