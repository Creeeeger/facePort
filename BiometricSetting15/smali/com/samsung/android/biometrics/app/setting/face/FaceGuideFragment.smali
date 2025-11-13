.class public Lcom/samsung/android/biometrics/app/setting/face/FaceGuideFragment;
.super Landroidx/fragment/app/Fragment;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# instance fields
.field public mActivity:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

.field public mMediaPlayer:Landroid/media/MediaPlayer;

.field public mTextureView:Landroid/view/TextureView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final adjustTextureViewRatio(II)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceGuideFragment;->mTextureView:Landroid/view/TextureView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Landroid/view/TextureView;->getWidth()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceGuideFragment;->mTextureView:Landroid/view/TextureView;

    .line 11
    .line 12
    invoke-virtual {v1}, Landroid/view/TextureView;->getHeight()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    int-to-double v2, p1

    .line 17
    int-to-double p1, p2

    .line 18
    div-double/2addr v2, p1

    .line 19
    int-to-double p1, v1

    .line 20
    mul-double/2addr p1, v2

    .line 21
    double-to-int p1, p1

    .line 22
    sub-int p2, v0, p1

    .line 23
    .line 24
    div-int/lit8 p2, p2, 0x2

    .line 25
    .line 26
    new-instance v1, Landroid/graphics/Matrix;

    .line 27
    .line 28
    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 29
    .line 30
    .line 31
    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceGuideFragment;->mTextureView:Landroid/view/TextureView;

    .line 32
    .line 33
    invoke-virtual {v2, v1}, Landroid/view/TextureView;->getTransform(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    .line 34
    .line 35
    .line 36
    int-to-float p1, p1

    .line 37
    int-to-float v0, v0

    .line 38
    div-float/2addr p1, v0

    .line 39
    const/high16 v0, 0x3f800000    # 1.0f

    .line 40
    .line 41
    invoke-virtual {v1, p1, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 42
    .line 43
    .line 44
    int-to-float p1, p2

    .line 45
    const/4 p2, 0x0

    .line 46
    invoke-virtual {v1, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 47
    .line 48
    .line 49
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceGuideFragment;->mTextureView:Landroid/view/TextureView;

    .line 50
    .line 51
    invoke-virtual {p0, v1}, Landroid/view/TextureView;->setTransform(Landroid/graphics/Matrix;)V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentActivity$HostCallbacks;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, p1, Landroidx/fragment/app/FragmentActivity$HostCallbacks;->activity:Landroid/app/Activity;

    .line 8
    .line 9
    check-cast p1, Landroidx/fragment/app/FragmentActivity;

    .line 10
    .line 11
    :goto_0
    check-cast p1, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    .line 12
    .line 13
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceGuideFragment;->mActivity:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    .line 14
    .line 15
    const v0, 0x7f100097

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {p1, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 23
    .line 24
    .line 25
    const/4 p1, 0x1

    .line 26
    iput-boolean p1, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 27
    .line 28
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->restoreChildFragmentState()V

    .line 29
    .line 30
    .line 31
    iget-object p0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    .line 32
    .line 33
    iget v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mCurState:I

    .line 34
    .line 35
    if-lt v0, p1, :cond_1

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchCreate()V

    .line 39
    .line 40
    .line 41
    :goto_1
    const-string p0, "BSS_FaceGuideFragment"

    .line 42
    .line 43
    const-string p1, "onCreate"

    .line 44
    .line 45
    invoke-static {p0, p1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .line 1
    const-string v0, "BSS_FaceGuideFragment"

    .line 2
    .line 3
    const-string v1, "onCreateView"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    const v0, 0x7f0d0029

    .line 9
    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const p2, 0x7f0a00e3

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    const v3, 0x7f0700a7

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getFloat(I)F

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceGuideFragment;->mActivity:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    .line 37
    .line 38
    invoke-static {v3}, Lcom/samsung/android/biometrics/app/setting/Utils;->getDisplayHeight(Landroid/content/Context;)I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    int-to-float v3, v3

    .line 43
    mul-float/2addr v3, v2

    .line 44
    float-to-double v2, v3

    .line 45
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    double-to-int v2, v2

    .line 50
    iput v2, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 51
    .line 52
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 53
    .line 54
    .line 55
    const v0, 0x7f0a00e5

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    check-cast v0, Landroid/view/TextureView;

    .line 63
    .line 64
    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceGuideFragment;->mTextureView:Landroid/view/TextureView;

    .line 65
    .line 66
    if-eqz v0, :cond_0

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setVisibility(I)V

    .line 69
    .line 70
    .line 71
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceGuideFragment;->mTextureView:Landroid/view/TextureView;

    .line 72
    .line 73
    invoke-virtual {v0, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 74
    .line 75
    .line 76
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceGuideFragment;->mTextureView:Landroid/view/TextureView;

    .line 77
    .line 78
    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setFocusable(Z)V

    .line 79
    .line 80
    .line 81
    :cond_0
    const v0, 0x7f0a0166

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    check-cast v0, Landroid/widget/Button;

    .line 89
    .line 90
    if-eqz v0, :cond_1

    .line 91
    .line 92
    const/4 v2, 0x1

    .line 93
    invoke-virtual {v0, v2}, Landroid/widget/Button;->semSetButtonShapeEnabled(Z)V

    .line 94
    .line 95
    .line 96
    new-instance v2, Lcom/samsung/android/biometrics/app/setting/face/FaceGuideFragment$$ExternalSyntheticLambda1;

    .line 97
    .line 98
    invoke-direct {v2, p0}, Lcom/samsung/android/biometrics/app/setting/face/FaceGuideFragment$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/biometrics/app/setting/face/FaceGuideFragment;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    .line 103
    .line 104
    :cond_1
    const v0, 0x7f0a0122

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    if-eqz v0, :cond_2

    .line 112
    .line 113
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 114
    .line 115
    .line 116
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceGuideFragment;->mActivity:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    .line 117
    .line 118
    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    if-nez v0, :cond_3

    .line 123
    .line 124
    goto :goto_0

    .line 125
    :cond_3
    const v0, 0x7f0a00df

    .line 126
    .line 127
    .line 128
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    check-cast v0, Landroid/widget/TextView;

    .line 133
    .line 134
    new-instance v1, Ljava/lang/StringBuilder;

    .line 135
    .line 136
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 140
    .line 141
    .line 142
    move-result-object v2

    .line 143
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    const-string v2, "\n"

    .line 147
    .line 148
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    const v2, 0x7f10010f

    .line 152
    .line 153
    .line 154
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v2

    .line 158
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 169
    .line 170
    .line 171
    move-result-object p2

    .line 172
    if-eqz p2, :cond_4

    .line 173
    .line 174
    new-instance v0, Lcom/samsung/android/biometrics/app/setting/face/FaceGuideFragment$1;

    .line 175
    .line 176
    invoke-direct {v0, p0}, Lcom/samsung/android/biometrics/app/setting/face/FaceGuideFragment$1;-><init>(Lcom/samsung/android/biometrics/app/setting/face/FaceGuideFragment;)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {p2, v0}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 180
    .line 181
    .line 182
    new-instance v0, Lcom/samsung/android/biometrics/app/setting/face/FaceGuideFragment$$ExternalSyntheticLambda2;

    .line 183
    .line 184
    invoke-direct {v0, p0, p2}, Lcom/samsung/android/biometrics/app/setting/face/FaceGuideFragment$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/biometrics/app/setting/face/FaceGuideFragment;Landroid/view/View;)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    .line 189
    .line 190
    :cond_4
    :goto_0
    const p0, 0x7f0a00e4

    .line 191
    .line 192
    .line 193
    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 194
    .line 195
    .line 196
    move-result-object p0

    .line 197
    check-cast p0, Landroid/widget/TextView;

    .line 198
    .line 199
    const p2, 0x7f07008a

    .line 200
    .line 201
    .line 202
    invoke-static {p0, p2}, Lcom/samsung/android/biometrics/app/setting/Utils;->setMaxTextScaleSize(Landroid/widget/TextView;I)V

    .line 203
    .line 204
    .line 205
    return-object p1
.end method

.method public final onStop()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceGuideFragment;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceGuideFragment;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 15
    .line 16
    .line 17
    iput-object v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceGuideFragment;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceGuideFragment;->mTextureView:Landroid/view/TextureView;

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 24
    .line 25
    .line 26
    iput-object v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceGuideFragment;->mTextureView:Landroid/view/TextureView;

    .line 27
    .line 28
    :cond_1
    return-void
.end method

.method public final onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 3

    .line 1
    const-string p2, "BSS_FaceGuideFragment"

    .line 2
    .line 3
    const-string p3, "android.resource://"

    .line 4
    .line 5
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v0, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object p3, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceGuideFragment;->mActivity:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    .line 11
    .line 12
    invoke-virtual {p3}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p3

    .line 16
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string p3, "/raw/face_enroll_help_guide"

    .line 20
    .line 21
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p3

    .line 28
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 29
    .line 30
    .line 31
    move-result-object p3

    .line 32
    if-eqz p3, :cond_0

    .line 33
    .line 34
    new-instance v0, Landroid/media/MediaPlayer;

    .line 35
    .line 36
    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    .line 37
    .line 38
    .line 39
    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceGuideFragment;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 40
    .line 41
    const/16 v1, 0x9c4

    .line 42
    .line 43
    const/4 v2, 0x1

    .line 44
    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->semSetParameter(II)Z

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceGuideFragment;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 48
    .line 49
    const v1, 0x88bc

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->semSetParameter(II)Z

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceGuideFragment;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 56
    .line 57
    new-instance v1, Landroid/view/Surface;

    .line 58
    .line 59
    invoke-direct {v1, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 63
    .line 64
    .line 65
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceGuideFragment;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 66
    .line 67
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceGuideFragment;->mActivity:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    .line 68
    .line 69
    invoke-virtual {p1, v0, p3}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 70
    .line 71
    .line 72
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceGuideFragment;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 73
    .line 74
    invoke-virtual {p1, v2}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 75
    .line 76
    .line 77
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceGuideFragment;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 78
    .line 79
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 80
    .line 81
    .line 82
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceGuideFragment;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 83
    .line 84
    new-instance p3, Lcom/samsung/android/biometrics/app/setting/face/FaceGuideFragment$$ExternalSyntheticLambda0;

    .line 85
    .line 86
    invoke-direct {p3, p0}, Lcom/samsung/android/biometrics/app/setting/face/FaceGuideFragment$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/biometrics/app/setting/face/FaceGuideFragment;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1, p3}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :catch_0
    const-string p0, "IOException"

    .line 94
    .line 95
    invoke-static {p2, p0}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    .line 97
    .line 98
    goto :goto_0

    .line 99
    :catch_1
    const-string p0, "IllegalStateException"

    .line 100
    .line 101
    invoke-static {p2, p0}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    .line 103
    .line 104
    goto :goto_0

    .line 105
    :catch_2
    const-string p0, "SecurityException"

    .line 106
    .line 107
    invoke-static {p2, p0}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    .line 109
    .line 110
    goto :goto_0

    .line 111
    :catch_3
    const-string p0, "IllegalArgumentException"

    .line 112
    .line 113
    invoke-static {p2, p0}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    .line 115
    .line 116
    :cond_0
    :goto_0
    return-void
.end method

.method public final onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceGuideFragment;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    iget-object p2, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceGuideFragment;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 10
    .line 11
    invoke-virtual {p2}, Landroid/media/MediaPlayer;->getVideoHeight()I

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/biometrics/app/setting/face/FaceGuideFragment;->adjustTextureViewRatio(II)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public final onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 1
    return-void
.end method
