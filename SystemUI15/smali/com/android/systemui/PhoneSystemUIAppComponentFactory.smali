.class public final Lcom/android/systemui/PhoneSystemUIAppComponentFactory;
.super Lcom/android/systemui/SystemUIAppComponentFactoryBase;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/SystemUIAppComponentFactoryBase;-><init>()V

    return-void
.end method


# virtual methods
.method public final createSystemUIInitializer(Landroid/content/Context;)Lcom/android/systemui/SystemUIInitializerImpl;
    .locals 0

    new-instance p0, Lcom/android/systemui/SystemUIInitializerImpl;

    invoke-direct {p0, p1}, Lcom/android/systemui/SystemUIInitializerImpl;-><init>(Landroid/content/Context;)V

    return-object p0
.end method
