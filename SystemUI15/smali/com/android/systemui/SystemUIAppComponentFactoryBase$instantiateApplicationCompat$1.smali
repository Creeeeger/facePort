.class public final Lcom/android/systemui/SystemUIAppComponentFactoryBase$instantiateApplicationCompat$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/SystemUIAppComponentFactoryBase$ContextAvailableCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/SystemUIAppComponentFactoryBase;


# direct methods
.method public constructor <init>(Lcom/android/systemui/SystemUIAppComponentFactoryBase;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/SystemUIAppComponentFactoryBase$instantiateApplicationCompat$1;->this$0:Lcom/android/systemui/SystemUIAppComponentFactoryBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onContextAvailable(Landroid/content/Context;)Lcom/android/systemui/SystemUIInitializer;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/SystemUIAppComponentFactoryBase$instantiateApplicationCompat$1;->this$0:Lcom/android/systemui/SystemUIAppComponentFactoryBase;

    invoke-static {p0, p1}, Lcom/android/systemui/SystemUIAppComponentFactoryBase;->access$createSystemUIInitializerInternal(Lcom/android/systemui/SystemUIAppComponentFactoryBase;Landroid/content/Context;)Lcom/android/systemui/SystemUIInitializer;

    move-result-object p0

    return-object p0
.end method
