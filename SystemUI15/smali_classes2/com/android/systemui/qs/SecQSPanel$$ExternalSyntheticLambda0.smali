.class public final synthetic Lcom/android/systemui/qs/SecQSPanel$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/content/res/Configuration;


# direct methods
.method public synthetic constructor <init>(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/SecQSPanel$$ExternalSyntheticLambda0;->f$0:Landroid/content/res/Configuration;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/qs/SecQSPanel$$ExternalSyntheticLambda0;->f$0:Landroid/content/res/Configuration;

    check-cast p1, Lcom/android/systemui/qs/SecQSPanel$OnConfigurationChangedListener;

    sget v0, Lcom/android/systemui/qs/SecQSPanel;->$r8$clinit:I

    invoke-interface {p1, p0}, Lcom/android/systemui/qs/SecQSPanel$OnConfigurationChangedListener;->onConfigurationChange(Landroid/content/res/Configuration;)V

    return-void
.end method
