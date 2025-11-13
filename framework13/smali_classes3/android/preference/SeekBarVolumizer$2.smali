.class Landroid/preference/SeekBarVolumizer$2;
.super Ljava/lang/Object;
.source "SeekBarVolumizer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/preference/SeekBarVolumizer;->onStopTrackingTouch(Landroid/widget/SeekBar;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/preference/SeekBarVolumizer;


# direct methods
.method constructor blacklist <init>(Landroid/preference/SeekBarVolumizer;)V
    .locals 0
    .param p1, "this$0"    # Landroid/preference/SeekBarVolumizer;

    .line 796
    iput-object p1, p0, Landroid/preference/SeekBarVolumizer$2;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 1

    .line 799
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer$2;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-virtual {v0}, Landroid/preference/SeekBarVolumizer;->updateSeekBar()V

    .line 800
    return-void
.end method
