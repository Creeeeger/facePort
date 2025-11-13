.class public final Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragmentStartable;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/CoreStartable;


# instance fields
.field public final collapsedstatusBarFragmentProvider:Ljavax/inject/Provider;

.field public final fragmentService:Lcom/android/systemui/fragments/FragmentService;


# direct methods
.method public constructor <init>(Lcom/android/systemui/fragments/FragmentService;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/fragments/FragmentService;",
            "Ljavax/inject/Provider;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragmentStartable;->fragmentService:Lcom/android/systemui/fragments/FragmentService;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragmentStartable;->collapsedstatusBarFragmentProvider:Ljavax/inject/Provider;

    return-void
.end method


# virtual methods
.method public final start()V
    .locals 2

    const-class v0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragmentStartable;->collapsedstatusBarFragmentProvider:Ljavax/inject/Provider;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragmentStartable;->fragmentService:Lcom/android/systemui/fragments/FragmentService;

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/fragments/FragmentService;->addFragmentInstantiationProvider(Ljava/lang/Class;Ljavax/inject/Provider;)V

    return-void
.end method
