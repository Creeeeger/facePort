.class public Lcom/android/systemui/qs/SecQSDetail;
.super Landroid/widget/LinearLayout;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mOnConfigurationChangedListeners:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/SecQSDetail;->mOnConfigurationChangedListeners:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object p0, p0, Lcom/android/systemui/qs/SecQSDetail;->mOnConfigurationChangedListeners:Ljava/util/List;

    new-instance v0, Lcom/android/systemui/qs/SecQSDetail$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/android/systemui/qs/SecQSDetail$$ExternalSyntheticLambda0;-><init>(Landroid/content/res/Configuration;)V

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method
