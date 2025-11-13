.class public final Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ViewInstanceCreatorImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/qs/InjectionInflationController$ViewInstanceCreator;


# instance fields
.field public final attributeSet:Landroid/util/AttributeSet;

.field public final referenceGlobalRootComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;

.field public final referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

.field public final viewInstanceCreatorImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ViewInstanceCreatorImpl;


# direct methods
.method private constructor <init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ViewInstanceCreatorImpl;->viewInstanceCreatorImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ViewInstanceCreatorImpl;

    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ViewInstanceCreatorImpl;->referenceGlobalRootComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;

    iput-object p2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ViewInstanceCreatorImpl;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iput-object p4, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ViewInstanceCreatorImpl;->attributeSet:Landroid/util/AttributeSet;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ViewInstanceCreatorImpl;-><init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public final createSubroomQuickSettingsBaseView()Lcom/android/systemui/qp/SubroomQuickSettingsBaseView;
    .locals 2

    new-instance v0, Lcom/android/systemui/qp/SubroomQuickSettingsBaseView;

    iget-object v1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ViewInstanceCreatorImpl;->referenceGlobalRootComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;

    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;->context:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ViewInstanceCreatorImpl;->attributeSet:Landroid/util/AttributeSet;

    invoke-direct {v0, v1, p0}, Lcom/android/systemui/qp/SubroomQuickSettingsBaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method
