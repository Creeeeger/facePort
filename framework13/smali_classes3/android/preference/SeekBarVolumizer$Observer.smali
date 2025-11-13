.class final Landroid/preference/SeekBarVolumizer$Observer;
.super Landroid/database/ContentObserver;
.source "SeekBarVolumizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/preference/SeekBarVolumizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Observer"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/preference/SeekBarVolumizer;


# direct methods
.method public constructor blacklist <init>(Landroid/preference/SeekBarVolumizer;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .line 934
    iput-object p1, p0, Landroid/preference/SeekBarVolumizer$Observer;->this$0:Landroid/preference/SeekBarVolumizer;

    .line 935
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 936
    return-void
.end method


# virtual methods
.method public whitelist onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .line 940
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 941
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer$Observer;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {v0}, Landroid/preference/SeekBarVolumizer;->-$$Nest$fgetmStreamType(Landroid/preference/SeekBarVolumizer;)I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 942
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer$Observer;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {v0}, Landroid/preference/SeekBarVolumizer;->-$$Nest$mupdateSlider(Landroid/preference/SeekBarVolumizer;)V

    .line 943
    :cond_0
    return-void
.end method
