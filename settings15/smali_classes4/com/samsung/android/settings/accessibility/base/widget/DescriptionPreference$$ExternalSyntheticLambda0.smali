.class public final synthetic Lcom/samsung/android/settings/accessibility/base/widget/DescriptionPreference$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/airbnb/lottie/LottieListener;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/accessibility/base/widget/DescriptionPreference;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/accessibility/base/widget/DescriptionPreference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/base/widget/DescriptionPreference$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/accessibility/base/widget/DescriptionPreference;

    return-void
.end method


# virtual methods
.method public final onResult(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Ljava/lang/Throwable;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid illustration image uri: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/base/widget/DescriptionPreference$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/accessibility/base/widget/DescriptionPreference;

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/base/widget/DescriptionPreference;->mImageUri:Landroid/net/Uri;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "DescriptionPreference"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
