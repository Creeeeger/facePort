.class public final synthetic Lcom/samsung/android/settings/accessibility/hearing/MonoAudioFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/accessibility/hearing/MonoAudioFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/accessibility/hearing/MonoAudioFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/hearing/MonoAudioFragment$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/accessibility/hearing/MonoAudioFragment;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/hearing/MonoAudioFragment$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/accessibility/hearing/MonoAudioFragment;

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/hearing/MonoAudioFragment;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "master_mono"

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method
