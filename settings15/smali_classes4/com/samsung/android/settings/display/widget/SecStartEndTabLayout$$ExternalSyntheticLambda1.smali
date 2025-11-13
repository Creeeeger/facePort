.class public final synthetic Lcom/samsung/android/settings/display/widget/SecStartEndTabLayout$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/IntConsumer;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/display/widget/SecStartEndTabLayout;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/display/widget/SecStartEndTabLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/display/widget/SecStartEndTabLayout$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/settings/display/widget/SecStartEndTabLayout;

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/settings/display/widget/SecStartEndTabLayout$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/settings/display/widget/SecStartEndTabLayout;

    iget-object v0, p0, Lcom/samsung/android/settings/display/widget/SecStartEndTabLayout;->mTimes:[I

    aget v0, v0, p1

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/settings/display/widget/SecStartEndTabLayout;->updateTime(II)V

    return-void
.end method
